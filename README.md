# GitHub action for file detection
GitHub action which detects some flies in the repo and returns appropriate exit code
## Inputs
### `wildcard`
**Required** Find-like wildcard to find files\directories.
### `type`
*Optional* Type of find command. Supported values: f (file), d (directory), l (link), p (pipe), s (socket). Defaults to `f`.
### `exit_code_found`
*Optional* Exit code for non-empty find result. Defaults to `0`.
### `exit_code_not_found`
*Optional* Exit code for empty find result. Defaults to `0`.
### `base_path`
*Optional* Base directory to find files in. Defaults to `./`.
## Outputs
### `found`
Found items (files, directories etc.)
## Example usage
```yaml
  - name: Find all JS files and fail if found
    uses: DovnarAlexander/github-action-file-detection@master
    with:
      wildcard: '*.js'
      exit_code_found: 1
      exit_code_not_found: 0
      base_path: test
```
