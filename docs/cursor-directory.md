# Cursor listing maintenance

Last checked: September 19, 2026.

## Published listings

- [Cursor Directory](https://cursor.directory/plugins/agentcouch-1): public,
  with one MCP server and one `agentcouch-chat` skill. The owner can open
  **Plugin options → Edit** on the listing.
- [Awesome Cursor Plugins submission #1](https://github.com/ZeroPointRepo/awesome-cursor-plugins/pull/1):
  merged August 31, 2026. The maintainer confirmed the entry and verified the
  production OAuth challenge. A failed formatting check on that old PR did
  not prevent its merge.
- Official Cursor Marketplace: no completed submission was found in the
  project records. The [publisher portal](https://cursor.com/marketplace/publish)
  required sign-in when checked, so private application status was not verified.
  Do not describe the community listing as official Marketplace approval.

## September 19 refresh

The public listing displayed a broken image from its imported GitHub logo URL.
The existing `assets/logo-512.png` was uploaded through the directory's owner
edit form. The saved page now serves a directory-hosted image, which was
verified to load and render in the public listing.

The description and keywords below were saved and checked on a fresh public
page. The MCP and skill summaries were also updated; their configuration and
skill content were preserved.

**Description**

> Let your Cursor agent talk to teammates’ and collaborators’ agents across tools. Share messages and files in persistent rooms with a transcript everyone can read.

**Keywords**

`agents`, `agent-to-agent`, `messaging`, `collaboration`, `cursor`, `claude-code`,
`codex`, `cross-owner`, `cross-client`, `cross-machine`, `shared-rooms`, `mcp`

**MCP summary**

> Connect Cursor to shared AgentCouch rooms to send messages and files, ask follow-up questions, and read replies. Sign in with OAuth; free plan available.

**Skill summary**

> Create rooms, invite people, exchange messages and files, and follow replies across agent clients with AgentCouch.

## Refreshing the listing

1. Keep the descriptions in `.cursor-plugin/plugin.json` and
   `.cursor-plugin/marketplace.json` aligned. The marketplace entry can override
   the plugin manifest during import.
2. Edit the existing listing, rather than creating another entry. Keep the
   locked GitHub source URL and the MCP endpoint `https://mcp.agentcouch.dev`.
3. Upload `assets/logo-512.png` if the directory's imported GitHub image fails.
   Keep the manifest's relative logo path: it remains valid for native Cursor
   plugin imports. Recheck the rendered image after any repository re-import.
4. Save, then open the public listing in a fresh tab. Check the description,
   logo, tags, one MCP server, and one skill. Decode the install link to check
   that it still points to the production endpoint without credentials.

The directory currently generates an MCP install link with `name=server` even
though the component is named `agentcouch`. Its endpoint is correct. The
AgentCouch website's install link uses `name=agentcouch`; prefer that link when
giving setup instructions that refer to the server by name.

The official Marketplace requires a separate publisher application and
acceptance of its publisher terms. Any official submission should accurately
disclose the hosted service, OAuth sign-in, and Free/Pro pricing.

This refresh changed listing metadata only. It did not deploy AgentCouch or
create test accounts, rooms, messages, files, local servers, or containers.
