// RFC: Unified Examples Format — Candidate B (TypeSpec-first decorator).
// Full EventGrid conversion. Incidental identity values are canonicalized
// (see header below); structure is otherwise a faithful 1:1 mapping.
// Generated from examples-reference/examples-fqn.yaml (Microsoft.EventGrid).
// Demonstration only; the @@example decorator shown here is a proposal.
//
// Status codes and headers are arrays (TypeSpec object values only allow
// identifier keys); subscription ids, resource groups, provider casing and
// resource-name indices are canonicalized for readability and consistency.

import "./main.tsp";

@@example(Microsoft.EventGrid.CaCertificates.createOrUpdate,
  #{
    title: "CaCertificates CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        caCertificateName: "exampleCaCertificate",
      },
      body: #{
        properties: #{
          description: "This is a test certificate",
          encodedCertificate: "base64EncodePemFormattedCertificateString",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            encodedCertificate: "base64EncodePemFormattedCertificateString",
            issueTimeInUtc: "2024-01-01T00:00:00Z",
            expiryTimeInUtc: "2024-01-01T00:00:00Z",
            provisioningState: "Succeeded",
            description: "This is a test Root certificate",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
          name: "exampleCaCertificate",
          type: "Microsoft.EventGrid/namespaces/caCertificates",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            encodedCertificate: "base64EncodePemFormattedCertificateString",
            issueTimeInUtc: "2024-01-01T00:00:00Z",
            expiryTimeInUtc: "2024-01-01T00:00:00Z",
            provisioningState: "Succeeded",
            description: "This is a test Root certificate",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
          name: "exampleCaCertificate",
          type: "Microsoft.EventGrid/namespaces/caCertificates",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.delete,
  #{
    title: "CaCertificates Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        caCertificateName: "exampleCaCertificate",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.get,
  #{
    title: "CaCertificates Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        caCertificateName: "exampleCaCertificate",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            encodedCertificate: "base64EncodePemFormattedCertificateString",
            issueTimeInUtc: "2024-01-01T00:00:00Z",
            expiryTimeInUtc: "2024-01-01T00:00:00Z",
            provisioningState: "Succeeded",
            description: "This is a test Root certificate",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
          name: "exampleCaCertificate",
          type: "Microsoft.EventGrid/namespaces/caCertificates",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.CaCertificates.listByNamespace,
  #{
    title: "CaCertificates ListByNamespace",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                encodedCertificate: "base64EncodePemFormattedCertificateString",
                issueTimeInUtc: "2024-01-01T00:00:00Z",
                expiryTimeInUtc: "2024-01-01T00:00:00Z",
                provisioningState: "Succeeded",
                description: "This is a test Root certificate",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates/exampleCaCertificate",
              name: "exampleCaCertificate",
              type: "Microsoft.EventGrid/namespaces/caCertificates",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/caCertificates?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.createOrUpdate,
  #{
    title: "Channels CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
      body: #{
        properties: #{
          channelType: "PartnerTopic",
          partnerTopicInfo: #{
            azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
            resourceGroupName: "examplerg",
            name: "examplePartnerTopic",
            source: "ContosoCorp.Accounts.User1",
          },
          messageForActivation: "Example message to approver",
          expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            channelType: "PartnerTopic",
            partnerTopicInfo: #{
              azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
              resourceGroupName: "examplerg",
              name: "examplePartnerTopic",
              source: "ContosoCorp.Accounts.User1",
            },
            messageForActivation: "Example message to approver",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/changes/exampleChannelName",
          name: "exampleChannel",
          type: "Microsoft.EventGrid/partnerNamespaces/channels",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            channelType: "PartnerTopic",
            partnerTopicInfo: #{
              azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
              resourceGroupName: "examplerg",
              name: "examplePartnerTopic",
              source: "ContosoCorp.Accounts.User1",
            },
            messageForActivation: "Example message to approver",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/changes/exampleChannelName",
          name: "exampleChannel",
          type: "Microsoft.EventGrid/partnerNamespaces/channels",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.delete,
  #{
    title: "Channels Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.delete,
  #{
    title: "Channels Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.get,
  #{
    title: "Channels Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            channelType: "PartnerTopic",
            partnerTopicInfo: #{
              azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
              resourceGroupName: "examplerg",
              name: "examplePartnerTopic",
              source: "ContosoCorp.Accounts.User1",
            },
            messageForActivation: "Example message to approver",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            readinessState: "NeverActivated",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/changes/exampleChannelName",
          name: "exampleChannel",
          type: "Microsoft.EventGrid/partnerNamespaces/channels",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.getFullUrl,
  #{
    title: "Channels GetFullUrl",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnernamespaces/examplePartnerNamespace",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.listByPartnerNamespace,
  #{
    title: "Channels ListByPartnerNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                channelType: "PartnerTopic",
                partnerTopicInfo: #{
                  azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
                  resourceGroupName: "examplerg",
                  name: "examplePartnerTopic",
                  source: "ContosoCorp.Accounts.User1",
                },
                messageForActivation: "Example message to approver",
                expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
                readinessState: "NeverActivated",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/changes/exampleChannelName",
              name: "exampleChannel",
              type: "Microsoft.EventGrid/partnerNamespaces/channels",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Channels.update,
  #{
    title: "Channels Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        channelName: "exampleChannel",
      },
      body: #{
        properties: #{
          expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.createOrUpdate,
  #{
    title: "ClientGroups CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientGroupName: "exampleClientGroup",
      },
      body: #{
        properties: #{
          description: "This is a test client group",
          query: "attributes.b IN ['a', 'b', 'c']",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            description: "This is a test client group",
            query: "attributes.b IN ['a', 'b', 'c']",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
          name: "exampleClientGroup",
          type: "Microsoft.EventGrid/namespaces/clientGroups",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            description: "This is a test client group",
            query: "attributes.b IN ['a', 'b', 'c']",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
          name: "exampleClientGroup",
          type: "Microsoft.EventGrid/namespaces/clientGroups",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.delete,
  #{
    title: "ClientGroups Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientGroupName: "exampleClientGroup",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.get,
  #{
    title: "ClientGroups Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientGroupName: "exampleClientGroup",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            description: "This is a test client group",
            query: "attributes.b IN ['a', 'b', 'c']",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
          name: "exampleClientGroup",
          type: "Microsoft.EventGrid/namespaces/clientGroups",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ClientGroups.listByNamespace,
  #{
    title: "ClientGroups ListByNamespace",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "This is a test client group",
                query: "attributes.b IN ['a', 'b', 'c']",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups/exampleClientGroup",
              name: "exampleClientGroup",
              type: "Microsoft.EventGrid/namespaces/clientGroups",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clientGroups?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.createOrUpdate,
  #{
    title: "Clients CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientName: "exampleClient",
      },
      body: #{
        properties: #{
          state: "Enabled",
          clientCertificateAuthentication: #{
            validationScheme: "SubjectMatchesAuthenticationName",
          },
          attributes: #{
            room: "345",
            floor: 3,
            deviceTypes: #[
              "Fan",
              "Light",
              "AC",
            ],
          },
          description: "This is a test client",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            clientCertificateAuthentication: #{
              validationScheme: "SubjectMatchesAuthenticationName",
            },
            state: "Enabled",
            attributes: #{
              room: "345a",
              floor: 3,
              deviceTypes: #[
                "Light",
                "1",
              ],
            },
            provisioningState: "Succeeded",
            description: "This is a test client",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
          name: "exampleClient",
          type: "Microsoft.EventGrid/namespaces/clients",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            clientCertificateAuthentication: #{
              validationScheme: "SubjectMatchesAuthenticationName",
            },
            state: "Enabled",
            attributes: #{
              room: "345a",
              floor: 3,
              deviceTypes: #[
                "Light",
                "1",
              ],
            },
            provisioningState: "Succeeded",
            description: "This is a test client",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
          name: "exampleClient",
          type: "Microsoft.EventGrid/namespaces/clients",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.delete,
  #{
    title: "Clients Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientName: "exampleClient",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.get,
  #{
    title: "Clients Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        clientName: "exampleClient",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            clientCertificateAuthentication: #{
              validationScheme: "SubjectMatchesAuthenticationName",
            },
            state: "Enabled",
            attributes: #{
              room: "345a",
              floor: 3,
              deviceTypes: #[
                "Light",
                "1",
              ],
            },
            provisioningState: "Succeeded",
            description: "This is a test client",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
          name: "exampleClient",
          type: "Microsoft.EventGrid/namespaces/clients",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Clients.listByNamespace,
  #{
    title: "Clients ListByNamespace",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                clientCertificateAuthentication: #{
                  validationScheme: "SubjectMatchesAuthenticationName",
                },
                state: "Enabled",
                attributes: #{
                  room: "345a",
                  floor: 3,
                  deviceTypes: #[
                    "Light",
                    "1",
                  ],
                },
                provisioningState: "Succeeded",
                description: "This is a test client",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients/exampleClient",
              name: "exampleClient",
              type: "Microsoft.EventGrid/namespaces/clients",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/clients?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.createOrUpdate,
  #{
    title: "DomainEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/eventSubscriptions",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.delete,
  #{
    title: "DomainEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.delete,
  #{
    title: "DomainEventSubscriptions Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.get,
  #{
    title: "DomainEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
            provisioningState: "Succeeded",
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
              includedEventTypes: #[
                "Microsoft.Storage.BlobCreated",
                "Microsoft.Storage.BlobDeleted",
              ],
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.getDeliveryAttributes,
  #{
    title: "DomainEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.getFullUrl,
  #{
    title: "DomainEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.list,
  #{
    title: "DomainEventSubscriptions List",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                  includedEventTypes: #[
                    "Microsoft.Storage.BlobCreated",
                    "Microsoft.Storage.BlobDeleted",
                  ],
                },
                labels: #[
                  "label1",
                  "label2",
                ],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 30,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/domains/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainEventSubscriptions.update,
  #{
    title: "DomainEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.createOrUpdate,
  #{
    title: "DomainTopicEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/domainTopics/eventSubscriptions",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/domainTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.delete,
  #{
    title: "DomainTopicEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.delete,
  #{
    title: "DomainTopicEventSubscriptions Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.get,
  #{
    title: "DomainTopicEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic",
            provisioningState: "Succeeded",
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
              includedEventTypes: #[
                "Microsoft.Storage.BlobCreated",
                "Microsoft.Storage.BlobDeleted",
              ],
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/domainTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.getDeliveryAttributes,
  #{
    title: "DomainTopicEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.getFullUrl,
  #{
    title: "DomainTopicEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.list,
  #{
    title: "DomainTopicEventSubscriptions List",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                  includedEventTypes: #[
                    "Microsoft.Storage.BlobCreated",
                    "Microsoft.Storage.BlobDeleted",
                  ],
                },
                labels: #[
                  "label1",
                  "label2",
                ],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 30,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/domains/domainTopics/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopicEventSubscriptions.update,
  #{
    title: "DomainTopicEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/domainTopics/exampleDomainTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/domains/domainTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.createOrUpdate,
  #{
    title: "DomainTopics CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        domainTopicName: "exampleDomainTopic",
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/domains/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.delete,
  #{
    title: "DomainTopics Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        domainTopicName: "exampleDomainTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.delete,
  #{
    title: "DomainTopics Delete",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        domainTopicName: "exampleDomainTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.delete,
  #{
    title: "DomainTopics Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        domainTopicName: "exampleDomainTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.get,
  #{
    title: "DomainTopics Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{},
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/domains/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.get,
  #{
    title: "DomainTopics Get",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        domainTopicName: "exampleDomainTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
          name: "exampleTopic",
          properties: #{
            provisioningState: "Succeeded",
          },
          type: "Microsoft.EventGrid/domains/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.listByDomain,
  #{
    title: "DomainTopics ListByDomain",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
            #{
              properties: #{
                endpoint: "https://exampledomain.westcentralus-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.DomainTopics.listByDomain,
  #{
    title: "DomainTopics ListByDomain",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              name: "exampleTopic",
              properties: #{
                provisioningState: "Succeeded",
              },
              type: "Microsoft.EventGrid/domains/topics",
            },
            #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              name: "exampleTopic",
              properties: #{
                provisioningState: "Succeeded",
              },
              type: "Microsoft.EventGrid/domains/topics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.createOrUpdate,
  #{
    title: "Domains CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          location: "westus2",
          name: "exampleDomain",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/domains",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.createOrUpdate,
  #{
    title: "Domains CreateOrUpdate",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        properties: #{
          publicNetworkAccess: "Enabled",
          inboundIpRules: #[
            #{
              ipMask: "12.18.30.15",
              action: "Allow",
            },
            #{
              ipMask: "12.18.176.1",
              action: "Allow",
            },
          ],
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
            publicNetworkAccess: "Enabled",
            inboundIpRules: #[
              #{
                ipMask: "12.18.30.15",
                action: "Allow",
              },
              #{
                ipMask: "12.18.176.1",
                action: "Allow",
              },
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          location: "westus2",
          name: "exampleDomain",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/domains",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.delete,
  #{
    title: "Domains Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.delete,
  #{
    title: "Domains Delete",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.delete,
  #{
    title: "Domains Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.get,
  #{
    title: "Domains Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            endpoint: "https://exampledomain.westcentralus-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          location: "westus2",
          name: "exampleDomain",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/domains",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listByResourceGroup,
  #{
    title: "Domains ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
            #{
              properties: #{
                endpoint: "https://exampledomain.westcentralus-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listBySubscription,
  #{
    title: "Domains ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
            #{
              properties: #{
                endpoint: "https://exampledomain.westcentralus-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
              location: "westus2",
              name: "exampleDomain",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/domains",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    since: "2021-12-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.listSharedAccessKeys,
  #{
    title: "Domains ListSharedAccessKeys",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    since: "2021-12-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.regenerateKey,
  #{
    title: "Domains RegenerateKey",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.update,
  #{
    title: "Domains Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          location: "westus2",
          name: "exampleDomain",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/domains",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Domains.update,
  #{
    title: "Domains Update",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        properties: #{
          publicNetworkAccess: "Enabled",
          inboundIpRules: #[
            #{
              ipMask: "12.18.30.15",
              action: "Allow",
            },
            #{
              ipMask: "12.18.176.1",
              action: "Allow",
            },
          ],
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampledomain.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
            publicNetworkAccess: "Enabled",
            inboundIpRules: #[
              #{
                ipMask: "12.18.30.15",
                action: "Allow",
              },
              #{
                ipMask: "12.18.176.1",
                action: "Allow",
              },
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain",
          location: "westus2",
          name: "exampleDomain",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/domains",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventChannels.createOrUpdate,
  #{
    title: "EventChannels CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        eventChannelName: "exampleEventChannel",
      },
      body: #{
        properties: #{
          source: #{
            source: "ContosoCorp.Accounts.User1",
          },
          destination: #{
            azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
            resourceGroup: "examplerg",
            partnerTopicName: "examplePartnerTopic",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: #{
              source: "ContosoCorp.Accounts.User1",
            },
            destination: #{
              azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
              resourceGroup: "examplerg",
              partnerTopicName: "examplePartnerTopic",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/eventChannels/exampleEventChannel",
          name: "exampleEventChannel",
          type: "Microsoft.EventGrid/partnerNamespaces/eventChannels",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventChannels.delete,
  #{
    title: "EventChannels Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        eventChannelName: "exampleEventChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventChannels.get,
  #{
    title: "EventChannels Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
        eventChannelName: "exampleEventChannel",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: #{
              source: "ContosoCorp.Accounts.User1",
            },
            destination: #{
              azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
              resourceGroup: "examplerg",
              partnerTopicName: "examplePartnerTopic",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/eventChannels/exampleEventChannel",
          name: "exampleEventChannel",
          type: "Microsoft.EventGrid/partnerNamespaces/eventChannels",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventChannels.listByPartnerNamespace,
  #{
    title: "EventChannels ListByPartnerNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                source: #{
                  source: "ContosoCorp.Accounts.User1",
                },
                destination: #{
                  azureSubscriptionId: "00000000-0000-0000-0000-000000000000",
                  resourceGroup: "amh",
                  partnerTopicName: "examplePartnerTopic",
                },
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace/eventChannels/exampleEventChannel",
              name: "exampleEventChannel",
              type: "Microsoft.EventGrid/partnerNamespaces/eventChannels",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createForCustomTopic,
  #{
    title: "EventSubscriptions CreateForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createForCustomTopic,
  #{
    title: "EventSubscriptions CreateForCustomTopic",
    since: "2017-09-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createForResource,
  #{
    title: "EventSubscriptions CreateForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createForResourceGroup,
  #{
    title: "EventSubscriptions CreateForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createForSubscription,
  #{
    title: "EventSubscriptions CreateForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "",
              subjectEndsWith: "",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdate,
  #{
    title: "EventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        eventSubscriptionName: "exampleEventSubscription",
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
      },
      body: #{
        properties: #{
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              blobContainerName: "contosocontainer",
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            },
          },
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              queueMessageTimeToLiveInSeconds: 300,
              queueName: "exampleQueue",
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          properties: #{
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                blobContainerName: "contosocontainer",
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              },
            },
            destination: #{
              endpointType: "StorageQueue",
              properties: #{
                queueMessageTimeToLiveInSeconds: 300,
                queueName: "exampleQueue",
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              },
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            provisioningState: "Creating",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic",
    since: "2021-10-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_AzureFunctionDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic AzureFunctionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "AzureFunction",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
              },
              endpointType: "AzureFunction",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_EventHubDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic EventHubDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_EventHubDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic EventHubDestination",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_HybridConnectionDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic HybridConnectionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "HybridConnection",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
              },
              endpointType: "HybridConnection",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_HybridConnectionDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic HybridConnectionDestination",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "HybridConnection",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
              },
              endpointType: "HybridConnection",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_ServiceBusQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic ServiceBusQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "ServiceBusQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/queues/exampleQueue",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/queues/exampleQueue",
              },
              endpointType: "ServiceBusQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_ServiceBusTopicDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic ServiceBusTopicDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "ServiceBusTopic",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/topics/exampleTopic",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/topics/exampleTopic",
              },
              endpointType: "ServiceBusTopic",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
              queueMessageTimeToLiveInSeconds: 300,
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
                queueMessageTimeToLiveInSeconds: 300,
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2021-12-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
              queueMessageTimeToLiveInSeconds: 300,
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
                queueMessageTimeToLiveInSeconds: 300,
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2025-02-15",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic StorageQueueDestination",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "StorageQueue",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              queueName: "exampleQueue",
              queueMessageTimeToLiveInSeconds: 300,
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
                queueMessageTimeToLiveInSeconds: 300,
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://contosofunction.azurewebsites.net/api/HttpTriggerCSharp1?code=<HIDDEN>",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
          deadLetterDestination: #{
            endpointType: "StorageBlob",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
              blobContainerName: "contosocontainer",
            },
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointUrl: null,
                endpointBaseUrl: "https://contosofunction.azurewebsites.net/api/HttpTriggerCSharp1",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2020-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2021-12-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2025-02-15",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions CreateOrUpdateForCustomTopic WebhookDestination",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "EventHub",
            properties: #{
              resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForResource,
  #{
    title: "EventSubscriptions CreateOrUpdateForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForResource,
  #{
    title: "EventSubscriptions CreateOrUpdateForResource",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForResourceGroup,
  #{
    title: "EventSubscriptions CreateOrUpdateForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForResourceGroup,
  #{
    title: "EventSubscriptions CreateOrUpdateForResourceGroup",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForSubscription,
  #{
    title: "EventSubscriptions CreateOrUpdateForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "",
              subjectEndsWith: "",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.createOrUpdateForSubscription,
  #{
    title: "EventSubscriptions CreateOrUpdateForSubscription",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "",
              subjectEndsWith: "",
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.delete,
  #{
    title: "EventSubscriptions Delete",
    request: #{
      path: #{
        eventSubscriptionName: "exampleEventSubscription",
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForCustomTopic,
  #{
    title: "EventSubscriptions DeleteForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForCustomTopic,
  #{
    title: "EventSubscriptions DeleteForCustomTopic",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForResource,
  #{
    title: "EventSubscriptions DeleteForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForResource,
  #{
    title: "EventSubscriptions DeleteForResource",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForResourceGroup,
  #{
    title: "EventSubscriptions DeleteForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForResourceGroup,
  #{
    title: "EventSubscriptions DeleteForResourceGroup",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForSubscription,
  #{
    title: "EventSubscriptions DeleteForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.deleteForSubscription,
  #{
    title: "EventSubscriptions DeleteForSubscription",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.get,
  #{
    title: "EventSubscriptions Get",
    request: #{
      path: #{
        eventSubscriptionName: "exampleEventSubscription",
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          properties: #{
            destination: #{
              endpointType: "WebHook",
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getDeliveryAttributes,
  #{
    title: "EventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getDeliveryAttributes,
  #{
    title: "EventSubscriptions GetDeliveryAttributes",
    since: "2021-12-01",
    request: #{
      path: #{
        scope: "aaaaaaaaaaaaaaaaaaaaaaaaa",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
            },
            #{
              name: "header2",
              type: "Dynamic",
            },
            #{
              name: "header3",
              type: "Static",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getDeliveryAttributes,
  #{
    title: "EventSubscriptions GetDeliveryAttributes",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getDeliveryAttributes,
  #{
    title: "EventSubscriptions GetDeliveryAttributes",
    since: "2025-02-15",
    request: #{
      path: #{
        scope: "aaaaaaaaaaaaaaaaaaaaaaaaa",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
            },
            #{
              name: "header2",
              type: "Dynamic",
            },
            #{
              name: "header3",
              type: "Static",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getDeliveryAttributes,
  #{
    title: "EventSubscriptions GetDeliveryAttributes",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic,
  #{
    title: "EventSubscriptions GetForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic,
  #{
    title: "EventSubscriptions GetForCustomTopic",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_AzureFunctionDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic AzureFunctionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
              },
              endpointType: "AzureFunction",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_EventHubDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic EventHubDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_HybridConnectionDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic HybridConnectionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
              },
              endpointType: "HybridConnection",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_ServiceBusQueueDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic ServiceBusQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/queues/exampleQueue",
              },
              endpointType: "ServiceBusQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_ServiceBusTopicDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic ServiceBusTopicDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/topics/exampleTopic",
              },
              endpointType: "ServiceBusTopic",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic StorageQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
                queueMessageTimeToLiveInSeconds: 300,
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions GetForCustomTopic WebhookDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForResource,
  #{
    title: "EventSubscriptions GetForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForResource,
  #{
    title: "EventSubscriptions GetForResource",
    since: "2017-09-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForResource,
  #{
    title: "EventSubscriptions GetForResource",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForResourceGroup,
  #{
    title: "EventSubscriptions GetForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForResourceGroup,
  #{
    title: "EventSubscriptions GetForResourceGroup",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForSubscription,
  #{
    title: "EventSubscriptions GetForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getForSubscription,
  #{
    title: "EventSubscriptions GetForSubscription",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getFullUrl,
  #{
    title: "EventSubscriptions GetFullUrl",
    request: #{
      path: #{
        eventSubscriptionName: "exampleEventSubscription",
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getFullUrlForCustomTopic,
  #{
    title: "EventSubscriptions GetFullUrlForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getFullUrlForResource,
  #{
    title: "EventSubscriptions GetFullUrlForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getFullUrlForResourceGroup,
  #{
    title: "EventSubscriptions GetFullUrlForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.getFullUrlForSubscription,
  #{
    title: "EventSubscriptions GetFullUrlForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listByDomainTopic,
  #{
    title: "EventSubscriptions ListByDomainTopic",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listByDomainTopic,
  #{
    title: "EventSubscriptions ListByDomainTopic",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        domainName: "exampleDomain",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/domains/exampleDomain/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listByResource,
  #{
    title: "EventSubscriptions ListByResource",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        providerNamespace: "Microsoft.EventGrid",
        resourceTypeName: "topics",
        resourceName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listByResource,
  #{
    title: "EventSubscriptions ListByResource",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        providerNamespace: "Microsoft.EventGrid",
        resourceTypeName: "topics",
        resourceName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalByResourceGroup,
  #{
    title: "EventSubscriptions ListGlobalByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalByResourceGroup,
  #{
    title: "EventSubscriptions ListGlobalByResourceGroup",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalByResourceGroupForTopicType,
  #{
    title: "EventSubscriptions ListGlobalByResourceGroupForTopicType",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicTypeName: "Microsoft.Resources.ResourceGroups",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalByResourceGroupForTopicType,
  #{
    title: "EventSubscriptions ListGlobalByResourceGroupForTopicType",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicTypeName: "Microsoft.Resources.ResourceGroups",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalBySubscription,
  #{
    title: "EventSubscriptions ListGlobalBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalBySubscription,
  #{
    title: "EventSubscriptions ListGlobalBySubscription",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalBySubscriptionForTopicType,
  #{
    title: "EventSubscriptions ListGlobalBySubscriptionForTopicType",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        topicTypeName: "Microsoft.Resources.Subscriptions",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listGlobalBySubscriptionForTopicType,
  #{
    title: "EventSubscriptions ListGlobalBySubscriptionForTopicType",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        topicTypeName: "Microsoft.Resources.Subscriptions",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalByResourceGroup,
  #{
    title: "EventSubscriptions ListRegionalByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        location: "westus2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalByResourceGroup,
  #{
    title: "EventSubscriptions ListRegionalByResourceGroup",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        location: "westus2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalByResourceGroupForTopicType,
  #{
    title: "EventSubscriptions ListRegionalByResourceGroupForTopicType",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        location: "westus2",
        topicTypeName: "Microsoft.EventHub.namespaces",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalByResourceGroupForTopicType,
  #{
    title: "EventSubscriptions ListRegionalByResourceGroupForTopicType",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        location: "westus2",
        topicTypeName: "Microsoft.EventHub.namespaces",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalBySubscription,
  #{
    title: "EventSubscriptions ListRegionalBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        location: "westus2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalBySubscription,
  #{
    title: "EventSubscriptions ListRegionalBySubscription",
    since: "2017-09-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        location: "westus2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
                  },
                  endpointType: "EventHub",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalBySubscription,
  #{
    title: "EventSubscriptions ListRegionalBySubscription",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        location: "westus2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
                  },
                  endpointType: "EventHub",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalBySubscriptionForTopicType,
  #{
    title: "EventSubscriptions ListRegionalBySubscriptionForTopicType",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        location: "westus2",
        topicTypeName: "Microsoft.EventHub.namespaces",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  includedEventTypes: #[
                    "All",
                  ],
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.listRegionalBySubscriptionForTopicType,
  #{
    title: "EventSubscriptions ListRegionalBySubscriptionForTopicType",
    since: "2019-06-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        location: "westus2",
        topicTypeName: "Microsoft.EventHub.namespaces",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
            #{
              properties: #{
                destination: #{
                  properties: #{
                    endpointBaseUrl: "https://requestb.in/15ksip71",
                  },
                  endpointType: "WebHook",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                },
                labels: #[
                  "Finance",
                  "HR",
                ],
                provisioningState: "Succeeded",
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.update,
  #{
    title: "EventSubscriptions Update",
    request: #{
      path: #{
        eventSubscriptionName: "exampleEventSubscription",
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
      },
      body: #{
        destination: #{
          endpointType: "EventHub",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          properties: #{
            destination: #{
              endpointType: "EventHub",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic,
  #{
    title: "EventSubscriptions UpdateForCustomTopic",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic,
  #{
    title: "EventSubscriptions UpdateForCustomTopic",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_AzureFunctionDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic AzureFunctionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "AzureFunction",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
          },
        },
        filter: #{
          isSubjectCaseSensitive: false,
          subjectBeginsWith: "ExamplePrefix",
          subjectEndsWith: "ExampleSuffix",
        },
        deadLetterDestination: #{
          endpointType: "StorageBlob",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            blobContainerName: "contosocontainer",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
              },
              endpointType: "AzureFunction",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_EventHubDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic EventHubDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "EventHub",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
              },
              endpointType: "EventHub",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_HybridConnectionDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic HybridConnectionDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "HybridConnection",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Relay/namespaces/exampleNamespace/hybridConnections/HC1",
              },
              endpointType: "HybridConnection",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_ServiceBusQueueDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic ServiceBusQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "ServiceBusQueue",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/queues/exampleQueue",
          },
        },
        filter: #{
          isSubjectCaseSensitive: false,
          subjectBeginsWith: "ExamplePrefix",
          subjectEndsWith: "ExampleSuffix",
        },
        deadLetterDestination: #{
          endpointType: "StorageBlob",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            blobContainerName: "contosocontainer",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/queues/exampleQueue",
              },
              endpointType: "ServiceBusQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_ServiceBusTopicDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic ServiceBusTopicDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "ServiceBusTopic",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/topics/exampleTopic",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ServiceBus/namespaces/exampleNamespace/topics/exampleTopic",
              },
              endpointType: "ServiceBusTopic",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_StorageQueueDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic StorageQueueDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "StorageQueue",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            queueName: "exampleQueue",
            queueMessageTimeToLiveInSeconds: 300,
          },
        },
        filter: #{
          isSubjectCaseSensitive: false,
          subjectBeginsWith: "ExamplePrefix",
          subjectEndsWith: "ExampleSuffix",
        },
        deadLetterDestination: #{
          endpointType: "StorageBlob",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
            blobContainerName: "contosocontainer",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
                queueMessageTimeToLiveInSeconds: 300,
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Creating",
            labels: null,
            deadLetterDestination: #{
              endpointType: "StorageBlob",
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                blobContainerName: "contosocontainer",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForCustomTopic_WebhookDestination,
  #{
    title: "EventSubscriptions UpdateForCustomTopic WebhookDestination",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForResource,
  #{
    title: "EventSubscriptions UpdateForResource",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForResource,
  #{
    title: "EventSubscriptions UpdateForResource",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForResourceGroup,
  #{
    title: "EventSubscriptions UpdateForResourceGroup",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForResourceGroup,
  #{
    title: "EventSubscriptions UpdateForResourceGroup",
    since: "2017-09-15-preview",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "EventHub",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForResourceGroup,
  #{
    title: "EventSubscriptions UpdateForResourceGroup",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "EventHub",
          properties: #{
            resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/exampleNamespace/eventhubs/exampleEventHub",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForSubscription,
  #{
    title: "EventSubscriptions UpdateForSubscription",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              includedEventTypes: #[
                "All",
              ],
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.EventSubscriptions.updateForSubscription,
  #{
    title: "EventSubscriptions UpdateForSubscription",
    since: "2019-06-01",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[],
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/topics/exampleTopic/providers/Microsoft.EventGrid/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.ExtensionTopics.get,
  #{
    title: "ExtensionTopics Get",
    request: #{
      path: #{
        scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount/providers/Microsoft.EventGrid/extensionTopics/default",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        providerNamespace: "Microsoft.Storage",
        resourceTypeName: "storageaccounts",
        resourceName: "exampleResourceName",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            description: "Extension topic for /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount/providers/Microsoft.EventGrid/extensionTopics/default that can be used to obtain metrics",
            systemTopic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount/providers/Microsoft.EventGrid/extensionTopics/default",
          name: "exampleExtensionTopic",
          type: "providers/Microsoft.EventGrid/extensionTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.createOrUpdate,
  #{
    title: "NamespaceTopicEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          deliveryConfiguration: #{
            deliveryMode: "Queue",
            queue: #{
              receiveLockDurationInSeconds: 60,
              maxDeliveryCount: 4,
              eventTimeToLive: "P1D",
            },
          },
          eventDeliverySchema: "CloudEventSchemaV1_0",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            deliveryConfiguration: #{
              deliveryMode: "Queue",
              queue: #{
                receiveLockDurationInSeconds: 60,
                maxDeliveryCount: 4,
                eventTimeToLive: "P1D",
              },
            },
            eventDeliverySchema: "CloudEventSchemaV1_0",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
          systemData: null,
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Creating",
            deliveryConfiguration: #{
              deliveryMode: "Queue",
              queue: #{
                receiveLockDurationInSeconds: 60,
                maxDeliveryCount: 4,
                eventTimeToLive: "P1D",
              },
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.delete,
  #{
    title: "NamespaceTopicEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.get,
  #{
    title: "NamespaceTopicEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            deliveryConfiguration: #{
              deliveryMode: "Queue",
              queue: #{
                receiveLockDurationInSeconds: 60,
                maxDeliveryCount: 4,
                eventTimeToLive: "P1D",
              },
            },
            eventDeliverySchema: "CloudEventSchemaV1_0",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.getDeliveryAttributes,
  #{
    title: "NamespaceTopicEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.getFullUrl,
  #{
    title: "NamespaceTopicEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.listByNamespaceTopic,
  #{
    title: "NamespaceTopicEventSubscriptions ListByNamespaceTopic",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                deliveryConfiguration: #{
                  deliveryMode: "Queue",
                  queue: #{
                    receiveLockDurationInSeconds: 50,
                    maxDeliveryCount: 5,
                    eventTimeToLive: "P1D",
                  },
                },
                eventDeliverySchema: "CloudEventSchemaV1_0",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
              systemData: null,
            },
            #{
              properties: #{
                provisioningState: "Succeeded",
                deliveryConfiguration: #{
                  deliveryMode: "Queue",
                  queue: #{
                    receiveLockDurationInSeconds: 60,
                    maxDeliveryCount: 4,
                    eventTimeToLive: "P1D",
                  },
                },
                eventDeliverySchema: "CloudEventSchemaV1_0",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
              systemData: null,
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopicEventSubscriptions.update,
  #{
    title: "NamespaceTopicEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          deliveryConfiguration: #{
            deliveryMode: "Queue",
            queue: #{
              receiveLockDurationInSeconds: 60,
              maxDeliveryCount: 3,
              eventTimeToLive: "P1D",
            },
          },
          eventDeliverySchema: "CloudEventSchemaV1_0",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            deliveryConfiguration: #{
              deliveryMode: "Queue",
              queue: #{
                receiveLockDurationInSeconds: 60,
                maxDeliveryCount: 3,
                eventTimeToLive: "P1D",
              },
            },
            eventDeliverySchema: "CloudEventSchemaV1_0",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
          systemData: null,
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription/operationStatus/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Location",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription/operationResults/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Retry-After",
            value: "60",
          },
        ],
        body: #{
          properties: #{
            provisioningState: "Updating",
            deliveryConfiguration: #{
              deliveryMode: "Queue",
              queue: #{
                receiveLockDurationInSeconds: 60,
                maxDeliveryCount: 3,
                eventTimeToLive: "P1D",
              },
            },
            eventDeliverySchema: "CloudEventSchemaV1_0",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/namespaces/topics/eventsubscriptions",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.createOrUpdate,
  #{
    title: "NamespaceTopics CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
      body: #{
        properties: #{
          publisherType: "Custom",
          inputSchema: "CloudEventSchemaV1_0",
          eventRetentionInDays: 1,
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            publisherType: "Custom",
            inputSchema: "CloudEventSchemaV1_0",
            eventRetentionInDays: 1,
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/namespaces/topics",
          systemData: null,
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Creating",
            publisherType: "Custom",
            inputSchema: "CloudEventSchemaV1_0",
            eventRetentionInDays: 1,
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/namespaces/topics",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.delete,
  #{
    title: "NamespaceTopics Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.get,
  #{
    title: "NamespaceTopics Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            publisherType: "Custom",
            inputSchema: "CloudEventSchemaV1_0",
            eventRetentionInDays: 1,
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/namespaces/topics",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.listByNamespace,
  #{
    title: "NamespaceTopics ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                publisherType: "Custom",
                inputSchema: "CloudEventSchemaV1_0",
                eventRetentionInDays: 1,
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
              name: "exampleTopic",
              type: "Microsoft.EventGrid/namespaces/topics",
              systemData: null,
            },
            #{
              properties: #{
                provisioningState: "Succeeded",
                publisherType: "Custom",
                inputSchema: "CloudEventSchemaV1_0",
                eventRetentionInDays: 1,
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
              name: "exampleTopic",
              type: "Microsoft.EventGrid/namespaces/topics",
              systemData: null,
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.listSharedAccessKeys,
  #{
    title: "NamespaceTopics ListSharedAccessKeys",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.regenerateKey,
  #{
    title: "NamespaceTopics RegenerateKey",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.NamespaceTopics.update,
  #{
    title: "NamespaceTopics Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicName: "exampleTopic",
      },
      body: #{
        properties: #{
          eventRetentionInDays: 1,
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            publisherType: "Custom",
            inputSchema: "CloudEventSchemaV1_0",
            eventRetentionInDays: 1,
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/namespaces/topics",
          systemData: null,
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/operationStatus/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Location",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic/operationResults/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Retry-After",
            value: "60",
          },
        ],
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            publisherType: "Custom",
            inputSchema: "CloudEventSchemaV1_0",
            eventRetentionInDays: 1,
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topics/exampleTopic",
          name: "exampleTopic",
          type: "Microsoft.EventGrid/namespaces/topics",
          systemData: null,
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.createOrUpdate,
  #{
    title: "Namespaces CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value11",
          tag2: "value22",
        },
        properties: #{
          topicSpacesConfiguration: #{
            state: "Enabled",
            routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Creating",
            topicSpacesConfiguration: #{
              state: "Enabled",
              routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              hostname: null,
            },
          },
          location: "westus2",
          tags: #{
            key1: "value11",
            key2: "value22",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
          name: "exampleNamespace",
          type: "Microsoft.EventGrid/Namespaces",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Creating",
            topicSpacesConfiguration: #{
              state: "Enabled",
              routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              hostname: null,
            },
          },
          location: "westus2",
          tags: #{
            key1: "value11",
            key2: "value22",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
          name: "exampleNamespace",
          type: "Microsoft.EventGrid/Namespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.delete,
  #{
    title: "Namespaces Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.get,
  #{
    title: "Namespaces Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            topicSpacesConfiguration: #{
              state: "Enabled",
              routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
            },
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "value2",
            key3: "value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
          name: "exampleNamespace",
          type: "Microsoft.EventGrid/namespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listByResourceGroup,
  #{
    title: "Namespaces ListByResourceGroup",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listBySubscription,
  #{
    title: "Namespaces ListBySubscription",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                topicSpacesConfiguration: #{
                  state: "Enabled",
                  routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                  hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
                },
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
              name: "exampleNamespace",
              type: "Microsoft.EventGrid/namespaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.listSharedAccessKeys,
  #{
    title: "Namespaces ListSharedAccessKeys",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.regenerateKey,
  #{
    title: "Namespaces RegenerateKey",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.update,
  #{
    title: "Namespaces Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
      body: #{
        tags: #{
          tag1: "value1Updated",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            topicSpacesConfiguration: #{
              state: "Enabled",
              routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
          name: "exampleNamespace",
          type: "Microsoft.EventGrid/namespaces",
          location: "westus2",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/operationStatus/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Location",
            value: "https://management.windowsazure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/operationResults/7B023877-A473-457B-B462-562F97048FB6?api-version={api-version}",
          },
          #{
            name: "Retry-After",
            value: "60",
          },
        ],
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            topicSpacesConfiguration: #{
              state: "Enabled",
              routeTopicResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              hostname: "exampleNamespaceName.westus-1.mqtt.eventgrid-int.azure.net",
            },
          },
          location: "westus2",
          tags: #{
            key1: "value1Updated",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace",
          name: "exampleNamespace",
          type: "Microsoft.EventGrid/namespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Namespaces.validateCustomDomainOwnership,
  #{
    title: "Namespaces ValidateCustomDomainOwnership",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          customDomainsForTopicsConfiguration: #[
            #{
              fullyQualifiedDomainName: "custom-domain-name-1",
              validationState: "Pending",
              identity: #{
                type: "SystemAssigned",
              },
              certificateUrl: "string",
              expectedTxtRecordName: "txt-record-name-1",
              expectedTxtRecordValue: "txt-record-value-1",
            },
          ],
          customDomainsForTopicSpacesConfiguration: #[
            #{
              fullyQualifiedDomainName: "custom-domain-name-2",
              validationState: "Pending",
              identity: #{
                type: "SystemAssigned",
              },
              certificateUrl: "string",
              expectedTxtRecordName: "txt-record-name-2",
              expectedTxtRecordValue: "txt-record-value-2",
            },
          ],
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.get,
  #{
    title: "NetworkSecurityPerimeterConfigurations Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        resourceType: "topics",
        resourceName: "exampleResourceName",
        perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
        associationName: "someAssociation",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            networkSecurityPerimeter: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
              perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
              location: "westus2",
            },
            resourceAssociation: #{
              name: "someAssociation",
              accessMode: "Enforced",
            },
            profile: #{
              name: "someProfile",
              accessRulesVersion: "1",
              accessRules: #[
                #{
                  name: "ipRule",
                  properties: #{
                    direction: "Inbound",
                    addressPrefixes: #[
                      "148.0.0.0/8",
                    ],
                  },
                },
              ],
              diagnosticSettingsVersion: "1",
              enabledLogCategories: #[
                "NspOutbound",
              ],
            },
          },
          id: "/subscriptions//resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
          name: "exampleNetworkSecurityPerimeterConfiguration",
          type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.get,
  #{
    title: "NetworkSecurityPerimeterConfigurations Get",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        associationName: "someAssociation",
        perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
        resourceGroupName: "examplerg",
        resourceName: "exampleResourceName",
        resourceType: "topics",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleNetworkSecurityPerimeterConfiguration",
          type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
          properties: #{
            networkSecurityPerimeter: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
              location: "westus2",
              perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
            },
            profile: #{
              name: "someProfile",
              accessRules: #[
                #{
                  name: "ipRule",
                  properties: #{
                    addressPrefixes: #[
                      "148.0.0.0/8",
                    ],
                    direction: "Inbound",
                  },
                },
              ],
              accessRulesVersion: "1",
              diagnosticSettingsVersion: "1",
              enabledLogCategories: #[
                "NspOutbound",
              ],
            },
            provisioningState: "Succeeded",
            resourceAssociation: #{
              name: "someAssociation",
              accessMode: "Enforced",
            },
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.list,
  #{
    title: "NetworkSecurityPerimeterConfigurations List",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        resourceType: "topics",
        resourceName: "exampleResourceName",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                networkSecurityPerimeter: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
                  perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
                  location: "westus2",
                },
                resourceAssociation: #{
                  name: "someAssociation",
                  accessMode: "Enforced",
                },
                profile: #{
                  name: "someProfile",
                  accessRulesVersion: "1",
                  accessRules: #[
                    #{
                      name: "ipRule",
                      properties: #{
                        direction: "Inbound",
                        addressPrefixes: #[
                          "148.0.0.0/8",
                        ],
                      },
                    },
                  ],
                  diagnosticSettingsVersion: "1",
                  enabledLogCategories: #[
                    "NspOutbound",
                  ],
                },
              },
              id: "/subscriptions//resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
              name: "exampleNetworkSecurityPerimeterConfiguration",
              type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.list,
  #{
    title: "NetworkSecurityPerimeterConfigurations List",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        resourceGroupName: "examplerg",
        resourceName: "exampleResourceName",
        resourceType: "topics",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "exampleNetworkSecurityPerimeterConfiguration",
              type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
              properties: #{
                networkSecurityPerimeter: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
                  location: "westus2",
                  perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
                },
                profile: #{
                  name: "someProfile",
                  accessRules: #[
                    #{
                      name: "ipRule",
                      properties: #{
                        addressPrefixes: #[
                          "148.0.0.0/8",
                        ],
                        direction: "Inbound",
                      },
                    },
                  ],
                  accessRulesVersion: "1",
                  diagnosticSettingsVersion: "1",
                  enabledLogCategories: #[
                    "NspOutbound",
                  ],
                },
                provisioningState: "Succeeded",
                resourceAssociation: #{
                  name: "someAssociation",
                  accessMode: "Enforced",
                },
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.reconcile,
  #{
    title: "NetworkSecurityPerimeterConfigurations Reconcile",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        resourceType: "topics",
        resourceName: "exampleResourceName",
        perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
        associationName: "someAssociation",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            networkSecurityPerimeter: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
              perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
              location: "westus2",
            },
            resourceAssociation: #{
              name: "someAssociation",
              accessMode: "Enforced",
            },
            profile: #{
              name: "someProfile",
              accessRulesVersion: "1",
              accessRules: #[
                #{
                  name: "ipRule",
                  properties: #{
                    direction: "Inbound",
                    addressPrefixes: #[
                      "148.0.0.0/8",
                    ],
                  },
                },
              ],
              diagnosticSettingsVersion: "1",
              enabledLogCategories: #[
                "NspOutbound",
              ],
            },
          },
          id: "/subscriptions//resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
          name: "exampleNetworkSecurityPerimeterConfiguration",
          type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.NetworkSecurityPerimeterConfigurations.reconcile,
  #{
    title: "NetworkSecurityPerimeterConfigurations Reconcile",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        associationName: "someAssociation",
        perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
        resourceGroupName: "examplerg",
        resourceName: "exampleResourceName",
        resourceType: "topics",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleNetworkSecurityPerimeterConfiguration",
          type: "Microsoft.EventGrid/topics/networkSecurityPerimeterConfigurations",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/networkSecurityPerimeterConfigurations/exampleNetworkSecurityPerimeterConfiguration",
          properties: #{
            networkSecurityPerimeter: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/networkSecurityPerimeters/somePerimeter",
              location: "westus2",
              perimeterGuid: "8f6b6269-84f2-4d09-9e31-1127efcd1e40perimeter",
            },
            profile: #{
              name: "someProfile",
              accessRules: #[
                #{
                  name: "ipRule",
                  properties: #{
                    addressPrefixes: #[
                      "148.0.0.0/8",
                    ],
                    direction: "Inbound",
                  },
                },
              ],
              accessRulesVersion: "1",
              diagnosticSettingsVersion: "1",
              enabledLogCategories: #[
                "NspOutbound",
              ],
            },
            provisioningState: "Succeeded",
            resourceAssociation: #{
              name: "someAssociation",
              accessMode: "Enforced",
            },
          },
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.Operations.list,
  #{
    title: "Operations List",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "Microsoft.EventGrid/register/action",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "EventGrid Resource Provider",
                operation: "Registers the EventGrid Resource Provider",
                description: "Registers the eventSubscription for the EventGrid resource provider and enables the creation of Event Grid subscriptions.",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/eventSubscriptions/write",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "eventSubscriptions",
                operation: "Write EventSubscription",
                description: "Create or update a eventSubscription",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/eventSubscriptions/read",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "eventSubscriptions",
                operation: "Read EventSubscription",
                description: "Read a eventSubscription",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/eventSubscriptions/delete",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "eventSubscriptions",
                operation: "Delete EventSubscription",
                description: "Delete a eventSubscription",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/topics/write",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "topics",
                operation: "Write Topic",
                description: "Create or update a topic",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/topics/read",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "topics",
                operation: "Read Topic",
                description: "Read a topic",
              },
              origin: "UserAndSystem",
            },
            #{
              name: "Microsoft.EventGrid/topics/delete",
              display: #{
                provider: "Microsoft Event Grid",
                resource: "topics",
                operation: "Delete Topic",
                description: "Delete a topic",
              },
              origin: "UserAndSystem",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.authorizePartner,
  #{
    title: "PartnerConfigurations AuthorizePartner",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
      body: #{
        partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
        partnerName: "Contoso.Finance",
        authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 10,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.createOrUpdate,
  #{
    title: "PartnerConfigurations CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
      body: #{
        properties: #{
          partnerAuthorization: #{
            defaultMaximumExpirationTimeInDays: 10,
            authorizedPartnersList: #[
              #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                partnerName: "Contoso.Finance",
                authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
              },
              #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                partnerName: "fabrikam.HR",
                authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
              },
            ],
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 10,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 10,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.delete,
  #{
    title: "PartnerConfigurations Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.delete,
  #{
    title: "PartnerConfigurations Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.get,
  #{
    title: "PartnerConfigurations Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 10,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.listByResourceGroup,
  #{
    title: "PartnerConfigurations ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerAuthorization: #{
                  defaultMaximumExpirationTimeInDays: 10,
                  authorizedPartnersList: #[
                    #{
                      partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                      partnerName: "Contoso.Finance",
                      authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                    },
                    #{
                      partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                      partnerName: "fabrikam.HR",
                      authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                    },
                  ],
                },
              },
              location: "westus2",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
              name: "examplePartnerConfiguration",
              type: "Microsoft.EventGrid/partnerConfigurations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.listBySubscription,
  #{
    title: "PartnerConfigurations ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerAuthorization: #{
                  defaultMaximumExpirationTimeInDays: 10,
                  authorizedPartnersList: #[
                    #{
                      partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                      partnerName: "Contoso.Finance",
                      authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                    },
                    #{
                      partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                      partnerName: "fabrikam.HR",
                      authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                    },
                  ],
                },
              },
              location: "westus2",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
              name: "examplePartnerConfiguration",
              type: "Microsoft.EventGrid/partnerConfigurations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.unauthorizePartner,
  #{
    title: "PartnerConfigurations UnauthorizePartner",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
      body: #{
        partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
        partnerName: "Contoso.Finance",
        authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 10,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerConfigurations.update,
  #{
    title: "PartnerConfigurations Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
      body: #{
        tags: #{
          tag1: "value11",
          tag2: "value22",
        },
        properties: #{
          defaultMaximumExpirationTimeInDays: 100,
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 100,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value11",
            tag2: "value22",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            partnerAuthorization: #{
              defaultMaximumExpirationTimeInDays: 100,
              authorizedPartnersList: #[
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "Contoso.Finance",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
                #{
                  partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                  partnerName: "fabrikam.HR",
                  authorizationExpirationTimeInUtc: "2024-01-01T00:00:00Z",
                },
              ],
            },
          },
          location: "westus2",
          tags: #{
            tag1: "value11",
            tag2: "value22",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerConfigurations/examplePartnerConfiguration",
          name: "examplePartnerConfiguration",
          type: "Microsoft.EventGrid/partnerConfigurations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.activate,
  #{
    title: "PartnerDestinations Activate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "Activated",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.createOrUpdate,
  #{
    title: "PartnerDestinations CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
      body: #{
        tag1: "value1",
        tag2: "value2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            provisioningState: "Succeeded",
            endpointServiceContext: "string",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            activationState: "NeverActivated",
            endpointBaseUrl: "https://www.example/endpoint",
            messageForActivation: "Sample Activation message",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            provisioningState: "Succeeded",
            endpointServiceContext: "string",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            activationState: "NeverActivated",
            endpointBaseUrl: "https://www.example/endpoint",
            messageForActivation: "Sample Activation message",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.delete,
  #{
    title: "PartnerDestinations Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.delete,
  #{
    title: "PartnerDestinations Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.get,
  #{
    title: "PartnerDestinations Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.listByResourceGroup,
  #{
    title: "PartnerDestinations ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpointServiceContext: "ContosoCorp.Accounts.User1",
                provisioningState: "Succeeded",
                activationState: "NeverActivated",
                expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
                endpointBaseUrl: "https://somepartnerhostname",
                messageForActivation: "Some message to the approver",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
              name: "examplePartnerDestination",
              type: "Microsoft.EventGrid/partnerDestinations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.listBySubscription,
  #{
    title: "PartnerDestinations ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpointServiceContext: "ContosoCorp.Accounts.User1",
                provisioningState: "Succeeded",
                activationState: "NeverActivated",
                expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
                endpointBaseUrl: "https://somepartnerhostname",
                messageForActivation: "Some message to the approver",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
              name: "examplePartnerDestination",
              type: "Microsoft.EventGrid/partnerDestinations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.update,
  #{
    title: "PartnerDestinations Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerDestinations.update,
  #{
    title: "PartnerDestinations Update",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerDestinationName: "examplePartnerDestination",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
        body: #{
          properties: #{
            endpointServiceContext: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            endpointBaseUrl: "https://somepartnerhostname",
            messageForActivation: "Some message to the approver",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerDestinations/examplePartnerDestination",
          name: "examplePartnerDestination",
          type: "Microsoft.EventGrid/partnerDestinations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.createOrUpdate,
  #{
    title: "PartnerNamespaces CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        properties: #{
          partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
            endpoint: "https://examplePartnerNamespaceName.centraluseuap-1.eventgrid.azure.net/api/events",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace",
          name: "examplePartnerNamespace",
          type: "Microsoft.EventGrid/partnerNamespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.delete,
  #{
    title: "PartnerNamespaces Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.delete,
  #{
    title: "PartnerNamespaces Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.get,
  #{
    title: "PartnerNamespaces Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
            endpoint: "https://examplePartnerNamespaceName.centraluseuap-1.eventgrid.azure.net/api/events",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "value2",
            key3: "value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace",
          name: "examplePartnerNamespace",
          type: "Microsoft.EventGrid/partnerNamespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.listByResourceGroup,
  #{
    title: "PartnerNamespaces ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
                endpoint: "https://partnernamespace123.centraluseuap-1.eventgrid.azure.net/api/events",
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace",
              name: "examplePartnerNamespace",
              type: "Microsoft.EventGrid/partnerNamespaces",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.listBySubscription,
  #{
    title: "PartnerNamespaces ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
                endpoint: "https://partnernamespace123.centraluseuap-1.eventgrid.azure.net/api/events",
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "value2",
                key3: "value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace",
              name: "examplePartnerNamespace",
              type: "Microsoft.EventGrid/partnerNamespaces",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.listSharedAccessKeys,
  #{
    title: "PartnerNamespaces ListSharedAccessKeys",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.listSharedAccessKeys,
  #{
    title: "PartnerNamespaces ListSharedAccessKeys",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.regenerateKey,
  #{
    title: "PartnerNamespaces RegenerateKey",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.regenerateKey,
  #{
    title: "PartnerNamespaces RegenerateKey",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerNamespaces.update,
  #{
    title: "PartnerNamespaces Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerNamespaceName: "examplePartnerNamespace",
      },
      body: #{
        tags: #{
          tag1: "value1",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationFullyQualifiedId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
            endpoint: "https://examplePartnerNamespaceName.centraluseuap-1.eventgrid.azure.net/api/events",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerNamespaces/examplePartnerNamespace",
          name: "examplePartnerNamespace",
          type: "Microsoft.EventGrid/partnerNamespaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.createOrUpdate,
  #{
    title: "PartnerRegistrations CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        properties: #{
          partnerName: "ContosoCorp",
          partnerResourceTypeName: "ContosoCorp.Accounts",
          partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
          partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
          setupUri: "https://www.example.com/setup.html",
          logoUri: "https://www.example.com/logo.png",
          authorizedAzureSubscriptionIds: #[
            "d48566a8-2428-4a6c-8347-9675d09fb851",
          ],
        },
        location: "westus2",
        tags: #{
          key1: "value1",
          key2: "Value2",
          key3: "Value3",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerName: "ContosoCorp",
            partnerResourceTypeName: "ContosoCorp.Accounts",
            partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
            partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
            setupUri: "https://www.example.com/setup.html",
            logoUri: "https://www.example.com/logo.png",
            visibilityState: "Hidden",
            authorizedAzureSubscriptionIds: #[
              "d48566a8-2428-4a6c-8347-9675d09fb851",
            ],
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
      #{
        statusCode: 202,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerName: "ContosoCorp",
            partnerResourceTypeName: "ContosoCorp.Accounts",
            partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
            partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
            setupUri: "https://www.example.com/setup.html",
            logoUri: "https://www.example.com/logo.png",
            visibilityState: "Hidden",
            authorizedAzureSubscriptionIds: #[
              "d48566a8-2428-4a6c-8347-9675d09fb851",
            ],
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.createOrUpdate,
  #{
    title: "PartnerRegistrations CreateOrUpdate",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        location: "westus2",
        tags: #{
          key1: "value1",
          key2: "Value2",
          key3: "Value3",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
      #{
        statusCode: 202,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.delete,
  #{
    title: "PartnerRegistrations Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.delete,
  #{
    title: "PartnerRegistrations Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.get,
  #{
    title: "PartnerRegistrations Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerName: "ContosoCorp",
            partnerResourceTypeName: "ContosoCorp.Accounts",
            partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
            partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
            setupUri: "https://www.example.com/setup.html",
            logoUri: "https://www.example.com/logo.png",
            visibilityState: "Hidden",
            authorizedAzureSubscriptionIds: #[
              "348566c8-1238-3a6c-83bb-6575d12fb00f",
            ],
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.get,
  #{
    title: "PartnerRegistrations Get",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          tags: #{
            key1: "value1",
            key2: "Value2",
            key3: "Value3",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.list,
  #{
    title: "PartnerRegistrations List",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerName: "ContosoCorp",
                partnerResourceTypeName: "ContosoCorp.Accounts",
                partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
                partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
                setupUri: "https://www.example.com/setup.html",
                logoUri: "https://www.example.com/logo.png",
                visibilityState: "Hidden",
                authorizedAzureSubscriptionIds: #[
                  "d48566a8-2428-4a6c-8347-9675d09fb851",
                ],
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "Value2",
                key3: "Value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
              name: "examplePartnerRegistration",
              type: "Microsoft.EventGrid/partnerRegistrations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.listByResourceGroup,
  #{
    title: "PartnerRegistrations ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerName: "ContosoCorp",
                partnerResourceTypeName: "ContosoCorp.Accounts",
                partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
                partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
                setupUri: "https://www.example.com/setup.html",
                logoUri: "https://www.example.com/logo.png",
                visibilityState: "Hidden",
                authorizedAzureSubscriptionIds: #[
                  "d48566a8-2428-4a6c-8347-9675d09fb851",
                ],
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "Value2",
                key3: "Value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
              name: "examplePartnerRegistration",
              type: "Microsoft.EventGrid/partnerRegistrations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.listByResourceGroup,
  #{
    title: "PartnerRegistrations ListByResourceGroup",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "Value2",
                key3: "Value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
              name: "examplePartnerRegistration",
              type: "Microsoft.EventGrid/partnerRegistrations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.listBySubscription,
  #{
    title: "PartnerRegistrations ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerName: "ContosoCorp",
                partnerResourceTypeName: "ContosoCorp.Accounts",
                partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
                partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
                setupUri: "https://www.example.com/setup.html",
                logoUri: "https://www.example.com/logo.png",
                visibilityState: "Hidden",
                authorizedAzureSubscriptionIds: #[
                  "d48566a8-2428-4a6c-8347-9675d09fb851",
                ],
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "Value2",
                key3: "Value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
              name: "examplePartnerRegistration",
              type: "Microsoft.EventGrid/partnerRegistrations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.listBySubscription,
  #{
    title: "PartnerRegistrations ListBySubscription",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
              },
              location: "westus2",
              tags: #{
                key1: "value1",
                key2: "Value2",
                key3: "Value3",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
              name: "examplePartnerRegistration",
              type: "Microsoft.EventGrid/partnerRegistrations",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.update,
  #{
    title: "PartnerRegistrations Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        setupUri: "https://www.example.com/newsetup.html",
        logoUri: "https://www.example.com/newlogo.png",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerName: "ContosoCorp",
            partnerResourceTypeName: "ContosoCorp.Accounts",
            partnerResourceTypeDisplayName: "ContocoCorp Accounts DisplayName Text",
            partnerResourceTypeDescription: "ContocoCorp Accounts Description Text",
            setupUri: "https://www.example.com/newsetup.html",
            logoUri: "https://www.example.com/newlogo.png",
            visibilityState: "Hidden",
            authorizedAzureSubscriptionIds: #[
              "d48566a8-2428-4a6c-8347-9675d09fb851",
            ],
          },
          location: "westus2",
          tags: #{
            key1: "value1",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.update,
  #{
    title: "PartnerRegistrations Update",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.update,
  #{
    title: "PartnerRegistrations Update",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        tags: #{
          NewKey: "NewValue",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
          tags: #{
            NewKey: "NewValue",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.update,
  #{
    title: "PartnerRegistrations Update",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerRegistrations.update,
  #{
    title: "PartnerRegistrations Update",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerRegistrationName: "examplePartnerRegistration",
      },
      body: #{
        tags: #{
          NewKey: "NewValue",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
          },
          location: "westus2",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerRegistrations/examplePartnerRegistration",
          name: "examplePartnerRegistration",
          type: "Microsoft.EventGrid/partnerRegistrations",
          tags: #{
            NewKey: "NewValue",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.createOrUpdate,
  #{
    title: "PartnerTopicEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.createOrUpdate,
  #{
    title: "PartnerTopicEventSubscriptions CreateOrUpdate",
    since: "2021-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.delete,
  #{
    title: "PartnerTopicEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.delete,
  #{
    title: "PartnerTopicEventSubscriptions Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.get,
  #{
    title: "PartnerTopicEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
            provisioningState: "Succeeded",
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
              includedEventTypes: #[
                "Microsoft.Storage.BlobCreated",
                "Microsoft.Storage.BlobDeleted",
              ],
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.getDeliveryAttributes,
  #{
    title: "PartnerTopicEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.getFullUrl,
  #{
    title: "PartnerTopicEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.listByPartnerTopic,
  #{
    title: "PartnerTopicEventSubscriptions ListByPartnerTopic",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 10,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
            },
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                  includedEventTypes: #[
                    "Microsoft.Storage.BlobCreated",
                    "Microsoft.Storage.BlobDeleted",
                  ],
                },
                labels: #[
                  "label1",
                  "label2",
                ],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 30,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopicEventSubscriptions.update,
  #{
    title: "PartnerTopicEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/partnerTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.activate,
  #{
    title: "PartnerTopics Activate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "Activated",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.createOrUpdate,
  #{
    title: "PartnerTopics CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
      body: #{
        tag1: "value1",
        tag2: "value2",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            partnerTopicFriendlyDescription: "Example description",
            messageForActivation: "Example message for activation",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            expirationTimeIfNotActivatedUtc: "2024-01-01T00:00:00Z",
            partnerTopicFriendlyDescription: "Example description",
            messageForActivation: "Example message for activation",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.deactivate,
  #{
    title: "PartnerTopics Deactivate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "Deactivated",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.delete,
  #{
    title: "PartnerTopics Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.delete,
  #{
    title: "PartnerTopics Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.get,
  #{
    title: "PartnerTopics Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.listByResourceGroup,
  #{
    title: "PartnerTopics ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                source: "ContosoCorp.Accounts.User1",
                provisioningState: "Succeeded",
                activationState: "NeverActivated",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
              name: "examplePartnerTopic",
              type: "Microsoft.EventGrid/partnerTopics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.listBySubscription,
  #{
    title: "PartnerTopics ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                source: "ContosoCorp.Accounts.User1",
                provisioningState: "Succeeded",
                activationState: "NeverActivated",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
              name: "examplePartnerTopic",
              type: "Microsoft.EventGrid/partnerTopics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PartnerTopics.update,
  #{
    title: "PartnerTopics Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        partnerTopicName: "examplePartnerTopic",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            source: "ContosoCorp.Accounts.User1",
            provisioningState: "Succeeded",
            activationState: "NeverActivated",
          },
          location: "westus2",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/partnerTopics/examplePartnerTopic",
          name: "examplePartnerTopic",
          type: "Microsoft.EventGrid/partnerTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.createOrUpdate,
  #{
    title: "PermissionBindings CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        permissionBindingName: "examplePermissionBinding",
      },
      body: #{
        properties: #{
          topicSpaceName: "exampleTopicSpace",
          clientGroupName: "exampleClientGroup",
          permission: "Publisher",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topicSpaceName: "exampleTopicSpace",
            clientGroupName: "exampleClientGroup",
            permission: "Publisher",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
          name: "examplePermissionBinding",
          type: "Microsoft.EventGrid/namespaces/permissionBindings",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            topicSpaceName: "exampleTopicSpace",
            clientGroupName: "exampleClientGroup",
            permission: "Publisher",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
          name: "examplePermissionBinding",
          type: "Microsoft.EventGrid/namespaces/permissionBindings",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.delete,
  #{
    title: "PermissionBindings Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        permissionBindingName: "examplePermissionBinding",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.get,
  #{
    title: "PermissionBindings Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        permissionBindingName: "examplePermissionBinding",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topicSpaceName: "exampleTopicSpace",
            clientGroupName: "exampleClientGroup",
            permission: "Publisher",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
          name: "examplePermissionBinding",
          type: "Microsoft.EventGrid/namespaces/permissionBindings",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PermissionBindings.listByNamespace,
  #{
    title: "PermissionBindings ListByNamespace",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicSpaceName: "exampleTopicSpace",
                clientGroupName: "exampleClientGroup",
                permission: "Publisher",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings/examplePermissionBinding",
              name: "examplePermissionBinding",
              type: "Microsoft.EventGrid/namespaces/permissionBindings",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/permissionBindings?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.delete,
  #{
    title: "PrivateEndpointConnections Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.delete,
  #{
    title: "PrivateEndpointConnections Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.get,
  #{
    title: "PrivateEndpointConnections Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Pending",
              description: "Test",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.get,
  #{
    title: "PrivateEndpointConnections Get",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Pending",
              description: "Test",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.get,
  #{
    title: "PrivateEndpointConnections Get",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Pending",
              description: "Test",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.get,
  #{
    title: "PrivateEndpointConnections Get",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Pending",
              description: "Test",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.listByResource,
  #{
    title: "PrivateEndpointConnections ListByResource",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                privateEndpoint: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
                },
                groupIds: #[
                  "topic",
                ],
                privateLinkServiceConnectionState: #{
                  status: "Pending",
                  description: "Test",
                  actionsRequired: "None",
                },
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
              name: "examplePrivateEndpointConnection",
              type: "Microsoft.EventGrid/topics/privateEndpointConnections",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.listByResource,
  #{
    title: "PrivateEndpointConnections ListByResource",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                privateEndpoint: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
                },
                groupIds: #[
                  "topic",
                ],
                privateLinkServiceConnectionState: #{
                  status: "Pending",
                  description: "Test",
                  actionsRequired: "None",
                },
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
              name: "examplePrivateEndpointConnection",
              type: "Microsoft.EventGrid/topics/privateEndpointConnections",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.listByResource,
  #{
    title: "PrivateEndpointConnections ListByResource",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                privateEndpoint: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
                },
                groupIds: #[
                  "topic",
                ],
                privateLinkServiceConnectionState: #{
                  status: "Pending",
                  description: "Test",
                  actionsRequired: "None",
                },
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
              name: "examplePrivateEndpointConnection",
              type: "Microsoft.EventGrid/topics/privateEndpointConnections",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.listByResource,
  #{
    title: "PrivateEndpointConnections ListByResource",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                privateEndpoint: #{
                  id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
                },
                groupIds: #[
                  "topic",
                ],
                privateLinkServiceConnectionState: #{
                  status: "Pending",
                  description: "Test",
                  actionsRequired: "None",
                },
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
              name: "examplePrivateEndpointConnection",
              type: "Microsoft.EventGrid/topics/privateEndpointConnections",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.update,
  #{
    title: "PrivateEndpointConnections Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
      body: #{
        properties: #{
          privateLinkServiceConnectionState: #{
            status: "Approved",
            description: "approving connection",
            actionsRequired: "None",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.update,
  #{
    title: "PrivateEndpointConnections Update",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
      body: #{
        properties: #{
          privateLinkServiceConnectionState: #{
            status: "Approved",
            description: "approving connection",
            actionsRequired: "None",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.update,
  #{
    title: "PrivateEndpointConnections Update",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
      body: #{
        properties: #{
          privateLinkServiceConnectionState: #{
            status: "Approved",
            description: "approving connection",
            actionsRequired: "None",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateEndpointConnections.update,
  #{
    title: "PrivateEndpointConnections Update",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateEndpointConnectionName: "examplePrivateEndpointConnection",
      },
      body: #{
        properties: #{
          privateLinkServiceConnectionState: #{
            status: "Approved",
            description: "approving connection",
            actionsRequired: "None",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            privateEndpoint: #{
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Network/privateEndpoints/bmtpe5",
            },
            groupIds: #[
              "topic",
            ],
            privateLinkServiceConnectionState: #{
              status: "Approved",
              description: "approving connection",
              actionsRequired: "None",
            },
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateEndpointConnections/examplePrivateEndpointConnection",
          name: "examplePrivateEndpointConnection",
          type: "Microsoft.EventGrid/topics/privateEndpointConnections",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.get,
  #{
    title: "PrivateLinkResources Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateLinkResourceName: "examplePrivateLinkResource",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            groupId: "topic",
            displayName: "Event Grid topic",
            requiredMembers: #[
              "topic",
            ],
            requiredZoneNames: #[
              "privatelink.eventgrid.azure.net",
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
          name: "examplePrivateLinkResource",
          type: "Microsoft.EventGrid/topics/privateLinkResources",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.get,
  #{
    title: "PrivateLinkResources Get",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateLinkResourceName: "examplePrivateLinkResource",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            groupId: "topic",
            displayName: "Event Grid topic",
            requiredMembers: #[
              "topic",
            ],
            requiredZoneNames: #[
              "privatelink.eventgrid.azure.net",
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
          name: "examplePrivateLinkResource",
          type: "Microsoft.EventGrid/topics/privateLinkResources",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.get,
  #{
    title: "PrivateLinkResources Get",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateLinkResourceName: "examplePrivateLinkResource",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            groupId: "topic",
            displayName: "Event Grid topic",
            requiredMembers: #[
              "topic",
            ],
            requiredZoneNames: #[
              "privatelink.eventgrid.azure.net",
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
          name: "examplePrivateLinkResource",
          type: "Microsoft.EventGrid/topics/privateLinkResources",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.get,
  #{
    title: "PrivateLinkResources Get",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
        privateLinkResourceName: "examplePrivateLinkResource",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            groupId: "topic",
            displayName: "Event Grid topic",
            requiredMembers: #[
              "topic",
            ],
            requiredZoneNames: #[
              "privatelink.eventgrid.azure.net",
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
          name: "examplePrivateLinkResource",
          type: "Microsoft.EventGrid/topics/privateLinkResources",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.listByResource,
  #{
    title: "PrivateLinkResources ListByResource",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                groupId: "topic",
                displayName: "Event Grid topic",
                requiredMembers: #[
                  "topic",
                ],
                requiredZoneNames: #[
                  "privatelink.eventgrid.azure.net",
                ],
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
              name: "examplePrivateLinkResource",
              type: "Microsoft.EventGrid/topics/privateLinkResources",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.listByResource,
  #{
    title: "PrivateLinkResources ListByResource",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                groupId: "topic",
                displayName: "Event Grid topic",
                requiredMembers: #[
                  "topic",
                ],
                requiredZoneNames: #[
                  "privatelink.eventgrid.azure.net",
                ],
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
              name: "examplePrivateLinkResource",
              type: "Microsoft.EventGrid/topics/privateLinkResources",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.listByResource,
  #{
    title: "PrivateLinkResources ListByResource",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                groupId: "topic",
                displayName: "Event Grid topic",
                requiredMembers: #[
                  "topic",
                ],
                requiredZoneNames: #[
                  "privatelink.eventgrid.azure.net",
                ],
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
              name: "examplePrivateLinkResource",
              type: "Microsoft.EventGrid/topics/privateLinkResources",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.PrivateLinkResources.listByResource,
  #{
    title: "PrivateLinkResources ListByResource",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        parentType: "topics",
        parentName: "exampletopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                groupId: "topic",
                displayName: "Event Grid topic",
                requiredMembers: #[
                  "topic",
                ],
                requiredZoneNames: #[
                  "privatelink.eventgrid.azure.net",
                ],
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/privateLinkResources/examplePrivateLinkResource",
              name: "examplePrivateLinkResource",
              type: "Microsoft.EventGrid/topics/privateLinkResources",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.createOrUpdate,
  #{
    title: "SystemTopicEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/systemTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.delete,
  #{
    title: "SystemTopicEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.delete,
  #{
    title: "SystemTopicEventSubscriptions Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.get,
  #{
    title: "SystemTopicEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
            provisioningState: "Succeeded",
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
              includedEventTypes: #[
                "Microsoft.Storage.BlobCreated",
                "Microsoft.Storage.BlobDeleted",
              ],
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/systemTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.getDeliveryAttributes,
  #{
    title: "SystemTopicEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.getFullUrl,
  #{
    title: "SystemTopicEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.listBySystemTopic,
  #{
    title: "SystemTopicEventSubscriptions ListBySystemTopic",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  subjectBeginsWith: "",
                  subjectEndsWith: "",
                },
                labels: #[],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 10,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/systemTopics/eventSubscriptions",
            },
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                  includedEventTypes: #[
                    "Microsoft.Storage.BlobCreated",
                    "Microsoft.Storage.BlobDeleted",
                  ],
                },
                labels: #[
                  "label1",
                  "label2",
                ],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 30,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/systemTopics/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopicEventSubscriptions.update,
  #{
    title: "SystemTopicEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/systemTopics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.createOrUpdate,
  #{
    title: "SystemTopics CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.createOrUpdate,
  #{
    title: "SystemTopics CreateOrUpdate",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
      body: #{
        properties: #{
          source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
          topicType: "Microsoft.Storage.storageaccounts",
        },
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.createOrUpdate,
  #{
    title: "SystemTopics CreateOrUpdate",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        resourceGroupName: "examplerg",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        systemTopicName: "exampleSystemTopic",
      },
      body: #{
        identity: #{
          type: "UserAssigned",
          userAssignedIdentities: #[
            #{
              key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
              value: #{},
            },
          ],
        },
        location: "westus2",
        properties: #{
          encryption: #{
            customerManagedKeyEncryption: #[
              #{
                keyEncryptionKeyIdentity: #{
                  type: "UserAssigned",
                  userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                },
                keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
              },
            ],
          },
          platformCapabilities: #{
            confidentialCompute: #{
              mode: "Enabled",
            },
          },
          source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
          topicType: "Microsoft.Storage.storageaccounts",
        },
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          identity: #{
            type: "UserAssigned",
            userAssignedIdentities: #[
              #{
                key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                value: #{
                  clientId: "33333333-3333-3333-3333-333333333333",
                  principalId: "22222222-2222-2222-2222-222222222222",
                },
              },
            ],
          },
          location: "westus2",
          properties: #{
            encryption: #{
              customerManagedKeyEncryption: #[
                #{
                  keyEncryptionKeyIdentity: #{
                    type: "UserAssigned",
                    userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                  },
                  keyEncryptionKeyStatus: "Active",
                  keyEncryptionKeyStatusFriendlyDescription: "Customer Managed Key (CMK) Encryption is 'Active' and running normally.",
                  keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
                },
              ],
            },
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
            platformCapabilities: #{
              confidentialCompute: #{
                mode: "Enabled",
              },
            },
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
          },
        },
      },
      #{
        statusCode: 201,
        body: #{
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          identity: #{
            type: "UserAssigned",
            userAssignedIdentities: #[
              #{
                key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                value: #{
                  clientId: "33333333-3333-3333-3333-333333333333",
                  principalId: "22222222-2222-2222-2222-222222222222",
                },
              },
            ],
          },
          location: "westus2",
          properties: #{
            encryption: #{
              customerManagedKeyEncryption: #[
                #{
                  keyEncryptionKeyIdentity: #{
                    type: "UserAssigned",
                    userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                  },
                  keyEncryptionKeyStatus: "Active",
                  keyEncryptionKeyStatusFriendlyDescription: "Customer Managed Key (CMK) Encryption is 'Active' and running normally.",
                  keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
                },
              ],
            },
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
            platformCapabilities: #{
              confidentialCompute: #{
                mode: "Enabled",
              },
            },
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.delete,
  #{
    title: "SystemTopics Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.delete,
  #{
    title: "SystemTopics Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.get,
  #{
    title: "SystemTopics Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.get,
  #{
    title: "SystemTopics Get",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        resourceGroupName: "examplerg",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        systemTopicName: "exampleSystemTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          identity: #{
            type: "UserAssigned",
            userAssignedIdentities: #[
              #{
                key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                value: #{
                  clientId: "33333333-3333-3333-3333-333333333333",
                  principalId: "22222222-2222-2222-2222-222222222222",
                },
              },
            ],
          },
          location: "westus2",
          properties: #{
            encryption: #{
              customerManagedKeyEncryption: #[
                #{
                  keyEncryptionKeyIdentity: #{
                    type: "UserAssigned",
                    userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                  },
                  keyEncryptionKeyStatus: "Active",
                  keyEncryptionKeyStatusFriendlyDescription: "Customer Managed Key (CMK) Encryption is 'Active' and running normally.",
                  keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
                },
              ],
            },
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
            platformCapabilities: #{
              confidentialCompute: #{
                mode: "Enabled",
              },
            },
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.listByResourceGroup,
  #{
    title: "SystemTopics ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
                topicType: "Microsoft.Storage.storageaccounts",
                metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
              name: "exampleSystemTopic",
              type: "Microsoft.EventGrid/systemTopics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.listBySubscription,
  #{
    title: "SystemTopics ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                provisioningState: "Succeeded",
                source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
                topicType: "Microsoft.Storage.storageaccounts",
                metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
              },
              location: "westus2",
              tags: null,
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
              name: "exampleSystemTopic",
              type: "Microsoft.EventGrid/systemTopics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.SystemTopics.update,
  #{
    title: "SystemTopics Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        systemTopicName: "exampleSystemTopic",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            provisioningState: "Succeeded",
            source: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageaccounts/exampleStorageAccount",
            topicType: "Microsoft.Storage.storageaccounts",
            metricResourceId: "183c0fb1-17ff-47b6-ac77-5a47420ab01e",
          },
          location: "westus2",
          tags: null,
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/systemTopics/exampleSystemTopic",
          name: "exampleSystemTopic",
          type: "Microsoft.EventGrid/systemTopics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.createOrUpdate,
  #{
    title: "TopicEventSubscriptions CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        properties: #{
          destination: #{
            endpointType: "WebHook",
            properties: #{
              endpointUrl: "https://requestb.in/15ksip71",
            },
          },
          filter: #{
            isSubjectCaseSensitive: false,
            subjectBeginsWith: "ExamplePrefix",
            subjectEndsWith: "ExampleSuffix",
          },
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/topics/eventSubscriptions",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
            },
            labels: null,
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/topics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.delete,
  #{
    title: "TopicEventSubscriptions Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.delete,
  #{
    title: "TopicEventSubscriptions Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.delete,
  #{
    title: "TopicEventSubscriptions Delete",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.delete,
  #{
    title: "TopicEventSubscriptions Delete",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.get,
  #{
    title: "TopicEventSubscriptions Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
            provisioningState: "Succeeded",
            destination: #{
              properties: #{
                resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                queueName: "exampleQueue",
              },
              endpointType: "StorageQueue",
            },
            filter: #{
              isSubjectCaseSensitive: false,
              subjectBeginsWith: "ExamplePrefix",
              subjectEndsWith: "ExampleSuffix",
              includedEventTypes: #[
                "Microsoft.Storage.BlobCreated",
                "Microsoft.Storage.BlobDeleted",
              ],
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/topics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.getDeliveryAttributes,
  #{
    title: "TopicEventSubscriptions GetDeliveryAttributes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "header1",
              type: "Static",
              properties: #{
                value: "NormalValue",
                isSecret: false,
              },
            },
            #{
              name: "header2",
              type: "Dynamic",
              properties: #{
                sourceField: "data.foo",
              },
            },
            #{
              name: "header3",
              type: "Static",
              properties: #{
                value: "mySecretValue",
                isSecret: true,
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.getFullUrl,
  #{
    title: "TopicEventSubscriptions GetFullUrl",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          endpointUrl: "https://requestb.in/15ksip71",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.list,
  #{
    title: "TopicEventSubscriptions List",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
                provisioningState: "Succeeded",
                destination: #{
                  properties: #{
                    resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.Storage/storageAccounts/exampleStorageAccount",
                    queueName: "exampleQueue",
                  },
                  endpointType: "StorageQueue",
                },
                filter: #{
                  isSubjectCaseSensitive: false,
                  subjectBeginsWith: "ExamplePrefix",
                  subjectEndsWith: "ExampleSuffix",
                  includedEventTypes: #[
                    "Microsoft.Storage.BlobCreated",
                    "Microsoft.Storage.BlobDeleted",
                  ],
                },
                labels: #[
                  "label1",
                  "label2",
                ],
                eventDeliverySchema: "EventGridSchema",
                retryPolicy: #{
                  maxDeliveryAttempts: 30,
                  eventTimeToLiveInMinutes: 1440,
                },
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
              name: "exampleEventSubscription",
              type: "Microsoft.EventGrid/topics/eventSubscriptions",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicEventSubscriptions.update,
  #{
    title: "TopicEventSubscriptions Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
        eventSubscriptionName: "exampleEventSubscription",
      },
      body: #{
        destination: #{
          endpointType: "WebHook",
          properties: #{
            endpointUrl: "https://requestb.in/15ksip71",
          },
        },
        filter: #{
          isSubjectCaseSensitive: true,
          subjectBeginsWith: "existingPrefix",
          subjectEndsWith: "newSuffix",
        },
        labels: #[
          "label1",
          "label2",
        ],
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            destination: #{
              properties: #{
                endpointBaseUrl: "https://requestb.in/15ksip71",
              },
              endpointType: "WebHook",
            },
            filter: #{
              isSubjectCaseSensitive: true,
              subjectBeginsWith: "existingPrefix",
              subjectEndsWith: "newSuffix",
            },
            labels: #[
              "label1",
              "label2",
            ],
            eventDeliverySchema: "EventGridSchema",
            retryPolicy: #{
              maxDeliveryAttempts: 30,
              eventTimeToLiveInMinutes: 1440,
            },
            provisioningState: "Succeeded",
            topic: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic/eventSubscriptions/exampleEventSubscription",
          name: "exampleEventSubscription",
          type: "Microsoft.EventGrid/topics/eventSubscriptions",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.createOrUpdate,
  #{
    title: "TopicSpaces CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicSpaceName: "exampleTopicSpace",
      },
      body: #{
        properties: #{
          topicTemplates: #[
            "filter1",
            "filter2",
          ],
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topicTemplates: #[
              "filter1",
              "filter2",
            ],
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
          name: "exampleTopicSpace",
          type: "Microsoft.EventGrid/namespaces/topicSpaces",
        },
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            topicTemplates: #[
              "filter1",
              "filter2",
            ],
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
          name: "exampleTopicSpace",
          type: "Microsoft.EventGrid/namespaces/topicSpaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.delete,
  #{
    title: "TopicSpaces Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicSpaceName: "exampleTopicSpace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.get,
  #{
    title: "TopicSpaces Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
        topicSpaceName: "exampleTopicSpace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            topicTemplates: #[
              "filter1",
              "filter2",
            ],
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
          name: "exampleTopicSpace",
          type: "Microsoft.EventGrid/namespaces/topicSpaces",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2023-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    since: "2023-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2023-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    since: "2024-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2024-06-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    since: "2024-12-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2024-12-15-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2025-02-15&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicSpaces.listByNamespace,
  #{
    title: "TopicSpaces ListByNamespace",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        namespaceName: "exampleNamespace",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                topicTemplates: #[
                  "filter1",
                  "filter2",
                ],
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces/exampleTopicSpace",
              name: "exampleTopicSpace",
              type: "Microsoft.EventGrid/namespaces/topicSpaces",
            },
          ],
          nextLink: "https://xyz.net/subscriptions/00000000-0000-0000-0000-000000000000/providers/Microsoft.EventGrid/namespaces/exampleNamespace/topicSpaces?2025-04-01-preview&%24skiptoken=7ZjtaqQwFIbvRWp%2f1dHJ6GgHypK1yro707F%2bdOn%2bUxPdMJhIkmqh9N43cYfeg6CE%2bB45mI%2bHlxz9MCh%2bl0dCL8I4fBi%2fo7woc%2bNg%2fJVyEAfbrgZiIda1jKENx4K98QaLzUQoYpOwCJUbiqUt3mrRcDJIwqiwkRt4%2b30VWMAFgeVW%2b8YKdq5v3e99Dzn3bR14W3vgbCQIc2H3pOFMsFZu8Iip7DhBtmQDacQ3PfqoctRrH4ADgLV1rK1nDRyPBE%2b3N%2bKixmQXTB9Mrzb92gRgDtXd3FW6B3WWPGrt49F5fYS%2ffP7SJxf4dZk7pBvYZYVK2ypRZKFSwFEyyV%2b01Co6K7X3PE%2bnPIexigKl4lQnwy7SL%2bxgeIIlDKGcTslrB6cu5SZoJ6dpwziCbqqC8ll1QQtDeqp5k81zbFTPK9rh67znhfSEXkO9DNV0Vl%2b9fz2MYy19pJuHbm%2fUnqlNMu6uEMFKcdEU83NZ%2fAijpyKDx9WSC7fk9wz%2bSY4z0tWWi7alPiGjMjun0Qpy0SAjqEud9ZTUBc5ya53%2fFFcrLh4izBO4Ylw0xrm80YZcWS7%2bG%2fInTOGTrnVWTy7Yk593RsV72HUcd5XEqND%2fShRRmJ2Mz38%3d",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.get,
  #{
    title: "TopicTypes Get",
    request: #{
      path: #{
        topicTypeName: "Microsoft.Storage.StorageAccounts",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            description: "Microsoft Storage service events.",
            displayName: "Storage Accounts",
            provider: "Microsoft.Storage",
            provisioningState: "Succeeded",
            resourceRegionType: "RegionalResource",
          },
          id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts",
          name: "exampleTopicType",
          type: "Microsoft.EventGrid/topicTypes",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.get,
  #{
    title: "TopicTypes Get",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        topicTypeName: "Microsoft.Storage.StorageAccounts",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleTopicType",
          type: "Microsoft.EventGrid/topicTypes",
          id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts",
          properties: #{
            description: "Microsoft Storage service events.",
            displayName: "Storage Accounts",
            provider: "Microsoft.Storage",
            provisioningState: "Succeeded",
            resourceRegionType: "RegionalResource",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.list,
  #{
    title: "TopicTypes List",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "Microsoft EventHubs service events.",
                displayName: "EventHubs Namespace",
                provider: "Microsoft.EventHub",
                provisioningState: "Succeeded",
                resourceRegionType: "RegionalResource",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.EventHub.Namespaces",
              name: "exampleTopicType",
              type: "Microsoft.EventGrid/topicTypes",
            },
            #{
              properties: #{
                description: "Microsoft Storage service events.",
                displayName: "Storage Accounts",
                provider: "Microsoft.Storage",
                provisioningState: "Succeeded",
                resourceRegionType: "RegionalResource",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts",
              name: "exampleTopicType",
              type: "Microsoft.EventGrid/topicTypes",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.list,
  #{
    title: "TopicTypes List",
    since: "2025-07-15-preview",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "exampleTopicType",
              type: "Microsoft.EventGrid/topicTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.EventHub.Namespaces",
              properties: #{
                description: "Microsoft EventHubs service events.",
                displayName: "EventHubs Namespace",
                provider: "Microsoft.EventHub",
                provisioningState: "Succeeded",
                resourceRegionType: "RegionalResource",
              },
            },
            #{
              name: "exampleTopicType",
              type: "Microsoft.EventGrid/topicTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts",
              properties: #{
                description: "Microsoft Storage service events.",
                displayName: "Storage Accounts",
                provider: "Microsoft.Storage",
                provisioningState: "Succeeded",
                resourceRegionType: "RegionalResource",
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.listEventTypes,
  #{
    title: "TopicTypes ListEventTypes",
    request: #{
      path: #{
        topicTypeName: "Microsoft.Storage.StorageAccounts",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                displayName: "Blob Created",
                description: "Raised when a blob is created.",
                schemaUrl: "tbd",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobCreated",
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
            },
            #{
              properties: #{
                description: "Raised when a blob is deleted.",
                schemaUrl: "tbd",
                displayName: "Blob Deleted",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobDeleted",
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.TopicTypes.listEventTypes,
  #{
    title: "TopicTypes ListEventTypes",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        topicTypeName: "Microsoft.Storage.StorageAccounts",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobCreated",
              properties: #{
                description: "Raised when a blob is created.",
                displayName: "Blob Created",
                schemaUrl: "tbd",
              },
            },
            #{
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobDeleted",
              properties: #{
                description: "Raised when a blob is deleted.",
                displayName: "Blob Deleted",
                schemaUrl: "tbd",
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.createOrUpdate,
  #{
    title: "Topics CreateOrUpdate",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.createOrUpdate,
  #{
    title: "Topics CreateOrUpdate",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        properties: #{
          publicNetworkAccess: "Enabled",
          inboundIpRules: #[
            #{
              ipMask: "12.18.30.15",
              action: "Allow",
            },
            #{
              ipMask: "12.18.176.1",
              action: "Allow",
            },
          ],
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
            publicNetworkAccess: "Enabled",
            inboundIpRules: #[
              #{
                ipMask: "12.18.30.15",
                action: "Allow",
              },
              #{
                ipMask: "12.18.176.1",
                action: "Allow",
              },
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.createOrUpdate,
  #{
    title: "Topics CreateOrUpdate",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        resourceGroupName: "examplerg",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        topicName: "exampleTopic",
      },
      body: #{
        identity: #{
          type: "UserAssigned",
          userAssignedIdentities: #[
            #{
              key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
              value: #{},
            },
          ],
        },
        location: "westus2",
        properties: #{
          encryption: #{
            customerManagedKeyEncryption: #[
              #{
                keyEncryptionKeyIdentity: #{
                  type: "UserAssigned",
                  userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                },
                keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
              },
            ],
          },
          platformCapabilities: #{
            confidentialCompute: #{
              mode: "Enabled",
            },
          },
        },
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          name: "exampleTopic",
          type: "Microsoft.EventGrid/topics",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          identity: #{
            type: "UserAssigned",
            userAssignedIdentities: #[
              #{
                key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                value: #{
                  clientId: "33333333-3333-3333-3333-333333333333",
                  principalId: "22222222-2222-2222-2222-222222222222",
                },
              },
            ],
          },
          location: "westus2",
          properties: #{
            encryption: #{
              customerManagedKeyEncryption: #[
                #{
                  keyEncryptionKeyIdentity: #{
                    type: "UserAssigned",
                    userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                  },
                  keyEncryptionKeyStatus: "Active",
                  keyEncryptionKeyStatusFriendlyDescription: "Customer Managed Key (CMK) Encryption is 'Active' and running normally.",
                  keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
                },
              ],
            },
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            platformCapabilities: #{
              confidentialCompute: #{
                mode: "Enabled",
              },
            },
            provisioningState: "Succeeded",
          },
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.createOrUpdateForAzureArc,
  #{
    title: "Topics CreateOrUpdateForAzureArc",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        location: "westus2",
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        kind: "AzureArc",
        extendedLocation: #{
          name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/examplerg/providers/Microsoft.ExtendedLocation/CustomLocations/exampleCustomLocation",
          type: "CustomLocation",
        },
        properties: #{
          inputSchema: "CloudEventSchemaV1_0",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
            inputSchema: "CloudEventSchemaV1_0",
          },
          kind: "AzureArc",
          extendedLocation: #{
            name: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/examplerg/providers/Microsoft.ExtendedLocation/CustomLocations/exampleCustomLocation",
            type: "CustomLocation",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    since: "2021-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    since: "2021-12-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.delete,
  #{
    title: "Topics Delete",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
      #{
        statusCode: 204,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.get,
  #{
    title: "Topics Get",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westcentralus-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.get,
  #{
    title: "Topics Get",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        resourceGroupName: "examplerg",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          name: "exampleTopic",
          type: "Microsoft.EventGrid/topics",
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          identity: #{
            type: "UserAssigned",
            userAssignedIdentities: #[
              #{
                key: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                value: #{
                  clientId: "33333333-3333-3333-3333-333333333333",
                  principalId: "22222222-2222-2222-2222-222222222222",
                },
              },
            ],
          },
          location: "westus2",
          properties: #{
            encryption: #{
              customerManagedKeyEncryption: #[
                #{
                  keyEncryptionKeyIdentity: #{
                    type: "UserAssigned",
                    userAssignedIdentityResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/user-assigned-id",
                  },
                  keyEncryptionKeyStatus: "Active",
                  keyEncryptionKeyStatusFriendlyDescription: "Customer Managed Key (CMK) Encryption is 'Active' and running normally.",
                  keyEncryptionKeyUrl: "https://ege2ekeyvault.vault.azure.net/keys/ValidKey1",
                },
              ],
            },
            endpoint: "https://exampletopic.westcentralus-1.eventgrid.azure.net/api/events",
            platformCapabilities: #{
              confidentialCompute: #{
                mode: "Enabled",
              },
            },
            provisioningState: "Succeeded",
          },
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listByResourceGroup,
  #{
    title: "Topics ListByResourceGroup",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              location: "westus2",
              name: "exampleTopic",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/topics",
            },
            #{
              properties: #{
                endpoint: "https://exampletopic.westcentralus-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              location: "westus2",
              name: "exampleTopic",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/topics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listBySubscription,
  #{
    title: "Topics ListBySubscription",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              location: "westus2",
              name: "exampleTopic",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/topics",
            },
            #{
              properties: #{
                endpoint: "https://exampletopic.westcentralus-1.eventgrid.azure.net/api/events",
                provisioningState: "Succeeded",
              },
              id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
              location: "westus2",
              name: "exampleTopic",
              tags: #{
                tag1: "value1",
                tag2: "value2",
              },
              type: "Microsoft.EventGrid/topics",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listEventTypes,
  #{
    title: "Topics ListEventTypes",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        providerNamespace: "Microsoft.Storage",
        resourceTypeName: "storageAccounts",
        resourceName: "ExampleStorageAccount",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                description: "Raised when a blob is created.",
                schemaUrl: "tbd",
                displayName: "Blob Created",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobCreated",
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
            },
            #{
              properties: #{
                description: "Raised when a blob is deleted.",
                schemaUrl: "tbd",
                displayName: "Blob Deleted",
              },
              id: "providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobDeleted",
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listEventTypes,
  #{
    title: "Topics ListEventTypes",
    since: "2025-07-15-preview",
    request: #{
      path: #{
        providerNamespace: "Microsoft.Storage",
        resourceGroupName: "examplerg",
        resourceName: "ExampleStorageAccount",
        resourceTypeName: "storageAccounts",
        subscriptionId: "00000000-0000-0000-0000-000000000000",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobCreated",
              properties: #{
                description: "Raised when a blob is created.",
                displayName: "Blob Created",
                schemaUrl: "tbd",
              },
            },
            #{
              name: "exampleEventType",
              type: "Microsoft.EventGrid/topicTypes/eventTypes",
              id: "/providers/Microsoft.EventGrid/topicTypes/Microsoft.Storage.StorageAccounts/eventTypes/Microsoft.Storage.BlobDeleted",
              properties: #{
                description: "Raised when a blob is deleted.",
                displayName: "Blob Deleted",
                schemaUrl: "tbd",
              },
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    since: "2021-12-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.listSharedAccessKeys,
  #{
    title: "Topics ListSharedAccessKeys",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2020-10-15-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
      #{
        statusCode: 202,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2021-12-01",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2022-06-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
      #{
        statusCode: 202,
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2025-02-15",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "<key1>",
          key2: "<key2>",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.regenerateKey,
  #{
    title: "Topics RegenerateKey",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        keyName: "key1",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          key1: "testKey1Value",
          key2: "testKey2Value",
        },
      },
      #{
        statusCode: 202,
        headers: #[
          #{
            name: "Location",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationStatus/default/operationId/00000000-0000-0000-0000-000000000000?api-version={api-version}",
          },
          #{
            name: "Azure-AsyncOperation",
            value: "https://management.azure.com/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/locations/eastus/operationResults/00000000-0000-0000-0000-000000000000/Spring/default?api-version={api-version}",
          },
        ],
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.update,
  #{
    title: "Topics Update",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
      },
    },
    responses: #[
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.Topics.update,
  #{
    title: "Topics Update",
    since: "2020-04-01-preview",
    request: #{
      path: #{
        subscriptionId: "00000000-0000-0000-0000-000000000000",
        resourceGroupName: "examplerg",
        topicName: "exampleTopic",
      },
      body: #{
        tags: #{
          tag1: "value1",
          tag2: "value2",
        },
        properties: #{
          publicNetworkAccess: "Enabled",
          inboundIpRules: #[
            #{
              ipMask: "12.18.30.15",
              action: "Allow",
            },
            #{
              ipMask: "12.18.176.1",
              action: "Allow",
            },
          ],
        },
      },
    },
    responses: #[
      #{
        statusCode: 200,
      },
      #{
        statusCode: 201,
        body: #{
          properties: #{
            endpoint: "https://exampletopic.westus2-1.eventgrid.azure.net/api/events",
            provisioningState: "Succeeded",
            publicNetworkAccess: "Enabled",
            inboundIpRules: #[
              #{
                ipMask: "12.18.30.15",
                action: "Allow",
              },
              #{
                ipMask: "12.18.176.1",
                action: "Allow",
              },
            ],
          },
          id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampleTopic",
          location: "westus2",
          name: "exampleTopic",
          tags: #{
            tag1: "value1",
            tag2: "value2",
          },
          type: "Microsoft.EventGrid/topics",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.get,
  #{
    title: "VerifiedPartners Get",
    request: #{
      path: #{
        verifiedPartnerName: "Contoso.Finance",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            organizationName: "Contoso",
            partnerDisplayName: "Contoso - Finance Department",
            partnerTopicDetails: #{
              description: "This is short description",
              longDescription: "This is really long long... long description",
              setupUri: "https://www.example.com/",
            },
            partnerDestinationDetails: #{
              description: "This is custom description",
              longDescription: "This is long custom description",
              setupUri: "https://www.example.com/",
            },
          },
          id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
          name: "exampleVerifiedPartner",
          type: "Microsoft.EventGrid/verifiedPartners",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.get,
  #{
    title: "VerifiedPartners Get",
    since: "2022-06-15",
    request: #{
      path: #{
        verifiedPartnerName: "Contoso.Finance",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            organizationName: "Contoso",
            partnerDisplayName: "Contoso - Finance Department",
            partnerTopicDetails: #{
              description: "This is short description",
              longDescription: "This is really long long... long description",
              setupUri: "https://www.example.com/",
            },
          },
          id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
          name: "exampleVerifiedPartner",
          type: "Microsoft.EventGrid/verifiedPartners",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.get,
  #{
    title: "VerifiedPartners Get",
    since: "2023-06-01-preview",
    request: #{
      path: #{
        verifiedPartnerName: "Contoso.Finance",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            organizationName: "Contoso",
            partnerDisplayName: "Contoso - Finance Department",
            partnerTopicDetails: #{
              description: "This is short description",
              longDescription: "This is really long long... long description",
              setupUri: "https://www.example.com/",
            },
            partnerDestinationDetails: #{
              description: "This is custom description",
              longDescription: "This is long custom description",
              setupUri: "https://www.example.com/",
            },
          },
          id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
          name: "exampleVerifiedPartner",
          type: "Microsoft.EventGrid/verifiedPartners",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.get,
  #{
    title: "VerifiedPartners Get",
    since: "2025-02-15",
    request: #{
      path: #{
        verifiedPartnerName: "Contoso.Finance",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            organizationName: "Contoso",
            partnerDisplayName: "Contoso - Finance Department",
            partnerTopicDetails: #{
              description: "This is short description",
              longDescription: "This is really long long... long description",
              setupUri: "https://www.example.com/",
            },
          },
          id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
          name: "exampleVerifiedPartner",
          type: "Microsoft.EventGrid/verifiedPartners",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.get,
  #{
    title: "VerifiedPartners Get",
    since: "2025-04-01-preview",
    request: #{
      path: #{
        verifiedPartnerName: "Contoso.Finance",
      },
    },
    responses: #[
      #{
        statusCode: 200,
        body: #{
          properties: #{
            partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
            organizationName: "Contoso",
            partnerDisplayName: "Contoso - Finance Department",
            partnerTopicDetails: #{
              description: "This is short description",
              longDescription: "This is really long long... long description",
              setupUri: "https://www.example.com/",
            },
            partnerDestinationDetails: #{
              description: "This is custom description",
              longDescription: "This is long custom description",
              setupUri: "https://www.example.com/",
            },
          },
          id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
          name: "exampleVerifiedPartner",
          type: "Microsoft.EventGrid/verifiedPartners",
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.list,
  #{
    title: "VerifiedPartners List",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                organizationName: "Contoso",
                partnerDisplayName: "Contoso - Finance Department",
                partnerTopicDetails: #{
                  description: "This is short description",
                  longDescription: "This is really long long... long description",
                  setupUri: "https://www.example.com/",
                },
                partnerDestinationDetails: #{
                  description: "This is custom description",
                  longDescription: "This is long custom description",
                  setupUri: "https://www.example.com/",
                },
              },
              id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
              name: "exampleVerifiedPartner",
              type: "Microsoft.EventGrid/verifiedPartners",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.list,
  #{
    title: "VerifiedPartners List",
    since: "2022-06-15",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                organizationName: "Contoso",
                partnerDisplayName: "Contoso - Finance Department",
                partnerTopicDetails: #{
                  description: "This is short description",
                  longDescription: "This is really long long... long description",
                  setupUri: "https://www.example.com/",
                },
              },
              id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
              name: "exampleVerifiedPartner",
              type: "Microsoft.EventGrid/verifiedPartners",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.list,
  #{
    title: "VerifiedPartners List",
    since: "2023-06-01-preview",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                organizationName: "Contoso",
                partnerDisplayName: "Contoso - Finance Department",
                partnerTopicDetails: #{
                  description: "This is short description",
                  longDescription: "This is really long long... long description",
                  setupUri: "https://www.example.com/",
                },
                partnerDestinationDetails: #{
                  description: "This is custom description",
                  longDescription: "This is long custom description",
                  setupUri: "https://www.example.com/",
                },
              },
              id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
              name: "exampleVerifiedPartner",
              type: "Microsoft.EventGrid/verifiedPartners",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.list,
  #{
    title: "VerifiedPartners List",
    since: "2025-02-15",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                organizationName: "Contoso",
                partnerDisplayName: "Contoso - Finance Department",
                partnerTopicDetails: #{
                  description: "This is short description",
                  longDescription: "This is really long long... long description",
                  setupUri: "https://www.example.com/",
                },
              },
              id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
              name: "exampleVerifiedPartner",
              type: "Microsoft.EventGrid/verifiedPartners",
            },
          ],
        },
      },
    ],
  });

@@example(Microsoft.EventGrid.VerifiedPartners.list,
  #{
    title: "VerifiedPartners List",
    since: "2025-04-01-preview",
    request: #{},
    responses: #[
      #{
        statusCode: 200,
        body: #{
          value: #[
            #{
              properties: #{
                partnerRegistrationImmutableId: "66666666-6666-6666-6666-666666666666",
                organizationName: "Contoso",
                partnerDisplayName: "Contoso - Finance Department",
                partnerTopicDetails: #{
                  description: "This is short description",
                  longDescription: "This is really long long... long description",
                  setupUri: "https://www.example.com/",
                },
                partnerDestinationDetails: #{
                  description: "This is custom description",
                  longDescription: "This is long custom description",
                  setupUri: "https://www.example.com/",
                },
              },
              id: "/providers/Microsoft.EventGrid/verifiedPartners/Contoso.Finance",
              name: "exampleVerifiedPartner",
              type: "Microsoft.EventGrid/verifiedPartners",
            },
          ],
        },
      },
    ],
  });
