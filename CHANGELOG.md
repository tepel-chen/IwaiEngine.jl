# Changelog

All notable changes to this project will be documented in this file.

## [0.2.0] - 2026-04-09

Changes since `v0.1.0`.

### Breaking Changes

- Templates now only accept `NamedTuple` render contexts
- Included templates now inherit the caller's `autoescape` setting
- Macro calls in templates now fail explicitly

### Added

- `root` support for `load` and `parse` to constrain file-backed template resolution

### Changed

- Template cache keys now include the configured root
- Relative include and extend resolution now respects the configured root directory

### Fixed

- Nested block handling
- Include path resolution
- Single-brace text handling
- Invalid expression edge cases
