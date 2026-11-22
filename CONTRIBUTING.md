# Contributing to Luna

Thanks for contributing to Luna. This document describes the development workflow and contribution standards.

## 1. Development Setup

Requirements:
- Rust (the version pinned in `rust-toolchain.toml` is installed automatically by rustup)
- Cargo
- Git
- [Just](https://github.com/casey/just)
- [cargo-deny](https://github.com/EmbarkStudios/cargo-deny) and [typos](https://github.com/crate-ci/typos): `cargo install --locked cargo-deny typos-cli`

Clone the repository:

```bash
git clone https://github.com/YOUR_USERNAME/Luna.git
cd Luna
```

## 2. Branch Naming

Do not commit directly to `main`. Create a branch for each change.

| Prefix | Purpose |
|---|---|
| `feat/` | New features |
| `fix/` | Bug fixes |
| `refactor/` | Code restructuring |
| `docs/` | Documentation |
| `test/` | Tests |
| `chore/` | Maintenance and tooling |
| `perf/` | Performance improvements |

Examples:

```bash
git switch -c feat/worktree-management
git switch -c fix/process-cleanup
```

Use lowercase kebab-case.

## 3. Commit Messages

Luna follows [Conventional Commits](https://www.conventionalcommits.org/).

Format:

```text
<type>(<scope>): <description>
```

Common types:

- `feat`: New functionality
- `fix`: Bug fixes
- `refactor`: Internal restructuring
- `docs`: Documentation
- `test`: Tests
- `chore`: Maintenance
- `ci`: CI/CD
- `perf`: Performance
- `build`: Build configuration

Examples:

```text
feat(worktree): add worktree creation
fix(runtime): handle process termination
```

Use `!` to indicate breaking changes:

```text
feat(api)!: change execution request format
```

Keep messages concise and descriptive.

## 4. Formatting

Luna uses `rustfmt`.

Format the workspace:

```bash
just fmt
```

Check formatting:

```bash
just fmt-check
```

All contributions must pass the formatting check.

## 5. Linting

Luna uses Clippy for static analysis.

```bash
just lint
```

Clippy warnings are treated as errors. Avoid suppressing lints without justification.

## 6. Testing

Run compilation checks:

```bash
just check
```

Run tests:

```bash
just test
```

Include relevant tests when adding features or fixing bugs.

## 7. Pull Requests

Run everything CI runs with:

```bash
just ci
```

Before submitting, ensure:

- [ ] Branch follows the naming convention.
- [ ] Commits follow Conventional Commits.
- [ ] Formatting passes.
- [ ] Clippy passes.
- [ ] Compilation succeeds.
- [ ] Tests pass.
- [ ] Documentation is updated when necessary.

Use Conventional Commit format for PR titles.

Keep pull requests focused and explain what changed, why it changed, and how it was tested.

## 8. General Guidelines

- Prefer clear, maintainable Rust.
- Avoid unnecessary `unsafe`, `unwrap()`, and `expect()` in production code.
- Avoid unnecessary dependencies and abstractions.
- Never commit credentials, API keys, or `.env` files.
- Discuss major architectural changes before implementing them.

Thank you for contributing to Luna.
