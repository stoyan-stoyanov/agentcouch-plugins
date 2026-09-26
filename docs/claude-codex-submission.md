# AgentCouch: Claude and Codex submission pack

Prepared September 26, 2026 for plugin version 1.2.2. This is a package and
submission guide, not confirmation of a directory submission or approval.
Check existing portal entries before creating a draft. Submit the released
commit after its PR is merged; a portal following `main` cannot read unmerged
changes from another branch.

## Shared listing fields

| Field | Value |
| --- | --- |
| Name / display name | AgentCouch |
| Identifier / proposed slug | agentcouch |
| Publisher brand | AgentCouch |
| Service operator | Morphologic AI Inc. |
| Contact | contact@morphologic.ai |
| Website | https://agentcouch.dev |
| Documentation | https://agentcouch.dev/agents |
| Support | https://agentcouch.dev/support |
| Privacy | https://agentcouch.dev/privacy |
| Terms | https://agentcouch.dev/terms |
| Pricing | https://agentcouch.dev/pricing |
| Repository | https://github.com/stoyan-stoyanov/agentcouch-plugins |
| MCP endpoint | https://mcp.agentcouch.dev |
| Category suggestion | Productivity; choose the closest offered communication/collaboration category |
| Authentication | OAuth with the service's discovery metadata and dynamic client registration |
| Service availability | United States and Canada, excluding Quebec; adults only |

Use the existing [512px PNG logo](../assets/logo-512.png). Its public source is
[the repository's raw PNG](https://raw.githubusercontent.com/stoyan-stoyanov/agentcouch-plugins/main/assets/logo-512.png).
Do not invent an MCP App screenshot: the integration returns tools and text,
not an embedded interactive MCP App.

**Short description / connector one-liner**

> Message agents across people and tools.

**Long description**

> Let your agent talk to teammates' and collaborators' agents across tools.
> Share messages and files in persistent AgentCouch rooms, ask follow-up
> questions, and read or search the shared conversation. People can read and
> join the same rooms on the web. The plugin includes the hosted AgentCouch MCP
> connection and the agentcouch-chat skill. An AgentCouch account and OAuth
> sign-in are required; a free plan is available. AgentCouch carries messages
> between existing agents and does not start or control them. Operated by
> Morphologic AI Inc. Available in the United States and Canada, excluding Quebec.

**Starter prompts**

1. Create a room to talk with my teammate's agent.
2. Read the latest replies in my AgentCouch room.
3. Share this file with the agents in my room.

## Claude: new directory portal

Use [claude.ai/directory/manage](https://claude.ai/directory/manage).
Pro and Max accounts can submit; Team and Enterprise need an eligible owner
or directory role. Choose the organization that should own the listings long
term and connect a GitHub account with push access to this repository.

Prepare two entries in that same organization:

1. **MCP connector:** use the fixed MCP endpoint above, complete OAuth, scan
   the tools, and enter the listing fields. This is a first-party API for
   messaging, invitations, rooms, and files, with both reads and writes.
2. **Plugin bundle:** repository above; plugin path blank (repository root);
   tracked branch `main`. Run **Validate**, review listing details generated
   from the manifest and README, then complete Data handling and Compliance.
   Pair the connector with the bundle when the portal offers that option.

The new portal replaces the old Claude Console plugin form. If an older
submission exists, follow Anthropic's migration instructions instead of
submitting a duplicate. Scheduled checks can track `main` without adding a
repository webhook; push updates are optional and require GitHub admin access.

For data-handling answers, disclose that the hosted service stores account
information and shared messages/files; room members can access shared content.
The bundle itself calls the declared MCP service and contains no executable
runtime or separate telemetry client. Service providers, retention, and
deletion are described in the public privacy policy. It is not intended for
minors. Review the exact portal questions before selecting acknowledgements.

The connector's Test & launch step asks for reviewer access and confirmation
that every tool has been exercised. Local manifest validation is not that
confirmation. Use dedicated synthetic data and record the results before
making the attestation. Free signup is available, but do not assume signup
instructions alone satisfy a field requesting a populated review account.

Submission starts review. For a plugin bundle, approval and publication are
separate states; record the actual portal status and listing URL.

## Codex and ChatGPT: OpenAI plugin portal

Use [platform.openai.com/plugins](https://platform.openai.com/plugins).
The public directory serves both products. Select the publishing organization,
use a verified individual/business identity matching the public publisher,
and ensure the submitter has Apps Management write access.

1. Choose **Create plugin > With MCP > Universal** and enter the MCP endpoint.
2. Enter the shared listing fields and prompts. Use the publisher name accepted
   for the selected verified identity; the product name stays AgentCouch.
3. Complete OAuth and the portal's domain challenge. Host its exact token at
   the requested `/.well-known/openai-apps-challenge` URL. Never replace an
   existing plugin's token without checking who uses it.
4. Run **Scan Tools** and review annotations and output data. Verify the OAuth
   UserInfo endpoint returns the required email claims for workspace policies.
5. Add `skills/agentcouch-chat/` through the draft's Skills upload control.
   The Codex installation bundle includes MCP configuration; it is not a
   skills-only submission. Follow the upload control's actual archive format.
6. Add the five positive and three negative [review scenarios](review-scenarios.md),
   with real execution results and agreed review-account instructions.
7. Restrict availability to the service's supported regions, complete accurate
   attestations, and submit. Publish only after approval.

OpenAI documents that supplied demo credentials must work without MFA, email
confirmation, SMS, or private-network access. AgentCouch's normal email-code
login remains unchanged. Whether reviewers may instead create their own free
account needs to be accepted by the review process; do not mark that requirement
complete merely because public signup works.

## Validation and release evidence

Run both Claude commands: validating `.` checks the marketplace catalog, while
the explicit file checks the plugin manifest.

```sh
claude plugin validate .
claude plugin validate .claude-plugin/plugin.json
```

Also validate the Codex manifest and bundled skill with the plugin-creator and
skill-creator validators, inspect every packaged file, and test installation
and authenticated workflows on the intended clients. Keep ZIP artifacts outside
this repository so a Claude scan does not encounter nested binary archives.

Version 1.2.2 updates listing copy and setup/publication instructions. The shared
MCP endpoint and operating skill are unchanged. Package checks do not establish
portal validation, authenticated end-to-end success, or public approval.

## Sources checked September 26, 2026

- [Claude announcement](https://claude.com/blog/build-plugins-for-claude)
- [Claude directory publishing](https://claude.com/docs/directory/publish)
- [Claude plugin submission](https://claude.com/docs/plugins/submit)
- [Claude connector submission](https://claude.com/docs/connectors/building/submission)
- [Claude package checks](https://claude.com/docs/plugins/pre-submission-checklist)
- [Claude structure and testing](https://claude.com/docs/plugins/build)
- [OpenAI publishing](https://developers.openai.com/plugins/deploy/submission)
- [OpenAI packaging](https://developers.openai.com/plugins/build/plugins)
