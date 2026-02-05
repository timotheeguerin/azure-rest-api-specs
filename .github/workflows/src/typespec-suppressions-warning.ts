import { compile, getLocationContext, NodeHost } from "@typespec/compiler";
import {
  SyntaxKind,
  visitChildren,
  type DirectiveExpressionNode,
  type Node,
  type TypeSpecScriptNode,
} from "@typespec/compiler/ast";
import path from "path";

const repoRoot = process.env.GITHUB_WORKSPACE ?? process.cwd();
const defaultEntrypoint = path.join(
  repoRoot,
  "specification/advisor/resource-manager/Microsoft.Advisor/Advisor/main.tsp",
);
const cliEntrypoint = process.argv[2];
const entrypoint = cliEntrypoint ? path.resolve(repoRoot, cliEntrypoint) : defaultEntrypoint;

const program = await compile(NodeHost, entrypoint, { noEmit: true });
const sourceFiles = [...program.sourceFiles.values()];

let warningCount = 0;

for (const sourceFile of sourceFiles) {
  const context = getLocationContext(program, sourceFile);
  if (!context || context.type !== "project") {
    continue;
  }

  const file = sourceFile.file;
  const relativePath = path.relative(repoRoot, file.path).split(path.sep).join("/");

  walkNode(sourceFile, (node) => {
    if (!isSuppressDirective(node)) {
      return;
    }

    const snippet = extractSingleLine(file.text, node.pos ?? 0, node.end ?? 0);
    const lineAndChar = file.getLineAndCharacterOfPosition(node.pos ?? 0);
    const message = `TypeSpec #suppress directive found: ${snippet}`;

    console.log(
      `::warning file=${relativePath},line=${lineAndChar.line + 1},col=${lineAndChar.character + 1}::${escapeAnnotation(
        message,
      )}`,
    );

    warningCount += 1;
  });
}

console.log(`Found ${warningCount} TypeSpec #suppress directive(s).`);

function isSuppressDirective(node: Node): node is DirectiveExpressionNode {
  return (
    node.kind === SyntaxKind.DirectiveExpression && node.target?.sv?.toLowerCase() === "suppress"
  );
}

function extractSingleLine(text: string, start: number, end: number): string {
  const slice = text.slice(start, Math.max(start, end));
  return slice.split(/\r?\n/)[0].trim();
}

function escapeAnnotation(value: string): string {
  return value.replace(/%/g, "%25").replace(/\r/g, "%0D").replace(/\n/g, "%0A");
}

function walkNode(node: TypeSpecScriptNode | Node, visit: (node: Node) => void): void {
  visit(node);
  visitChildren(node, (child) => {
    walkNode(child, visit);
  });
}
