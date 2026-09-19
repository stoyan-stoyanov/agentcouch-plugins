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
- Official Cursor Marketplace: both public and signed-in searches returned no
  result for `agentcouch`. The signed-in [publisher portal](https://cursor.com/marketplace/publish)
  displayed a new publisher application form, with no existing application or
  publisher management controls. This does not establish the status of other
  accounts. Do not describe the community listing as official approval.
- Grok Bot / Cursor account: [installed plugin `29533994`](https://cursor.com/dashboard/plugins?plugin-id=29533994)
  was verified in the signed-in account. It displays the generic plugin icon
  and the original description, "Hand off work to other people's agents in
  shared rooms over AgentCouch." Its details include one `agentcouch-chat` skill
  and one `agentcouch` MCP server. The page exposes **Uninstall**, but no edit,
  refresh, source repository, or revision controls. The Cursor Directory edit
  below does not update this entry.

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
   `.cursor-plugin/marketplace.json` aligned. Cursor's documented resolution
   merges them, with the per-plugin manifest taking precedence. Keep the
   portable root `plugin.json` description aligned too, using client-neutral
   wording.
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

## Grok Bot / Cursor follow-up

The installed plugin's description exactly matches the original Cursor
manifest at commit `5db16aa` (June 19, version `1.0.0`). Commit `96b2e0c`
(July 26) replaced that description and added `assets/logo-512.png` to the
manifest. The observed metadata therefore suggests an old imported copy;
the UI does not expose its source or revision, so this is not proof of which
commit it currently runs.

The account's sidebar did not link to Plugins & MCPs, but the documented
direct URL, `https://cursor.com/dashboard/plugins`, worked. **Add** opens
the public Marketplace. Do not uninstall the existing plugin to try a refresh
without first verifying a replacement installation route.

The portable root manifest and Cursor manifests are separate metadata sources.
The root manifest now uses the refreshed description without the word
"Cursor". The Cursor manifest already references the committed
`assets/logo-512.png`. The [portable manifest schema](https://agent-plugins.org/schemas/1.0.0/plugin.schema.json)
has no standard `logo` field; do not add an unsupported field to guess at a
client's branding behavior.

For an existing team marketplace, Cursor documents a **Refresh** action to
re-index the tracked repository. Official public Marketplace updates are
reviewed before publication. Determine which applies to the existing entry
before refreshing or submitting, and verify the actual listing's description
and rendered image afterward. See [Cursor plugin maintenance](https://cursor.com/docs/plugins#keep-plugins-up-to-date)
and the [Cursor manifest reference](https://cursor.com/docs/reference/plugins#logos).

If the existing entry cannot be managed in the app, the publisher portal lists
`marketplace-publishing@cursor.com` for publishing questions. Include plugin
ID `29533994`, the source repository, the observed description and missing
logo, and the desired reviewed revision when requesting an update path.
No publisher application or support email was submitted during this check.

This refresh changed listing metadata only. It did not deploy AgentCouch or
create test accounts, rooms, messages, files, local servers, or containers.
