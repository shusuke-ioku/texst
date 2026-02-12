# MCP Tooling (Optional)

This folder provides optional helper files for users who work with Zotero and PDF-reader MCP servers while writing papers with `texst`.

## Included files

- `mcp-servers.example.json`: Example MCP server entries for `zotero` and `pdf-reader`.
- `check-zotero-api.sh`: Quick health check for Zotero local API.

## 1) Configure MCP servers

Copy entries from `mcp-servers.example.json` into your MCP client config and adjust paths/commands:

- `zotero-mcp` command path
- `pdf-reader-mcp` command path
- `ZOTERO_STORAGE_PATH`
- `PDF_LIBRARY_DIR`

## 2) Validate Zotero connectivity

```bash
./tooling/mcp/check-zotero-api.sh
```

Optional custom base URL:

```bash
./tooling/mcp/check-zotero-api.sh http://127.0.0.1:23119/api/users/0
```

## Notes

- This tooling is optional and not required to use the Typst package itself.
- You still import the package normally (`@preview/texst:0.1.0` or `@local/texst:0.1.0`).
