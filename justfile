# List available recipes
default:
    @just --list

# Type-check all crates and targets
check:
    cargo check --workspace --all-targets --locked

# Run all tests
test:
    cargo test --workspace --all-targets --locked
    cargo test --workspace --doc --locked

# Format all code
fmt:
    cargo fmt --all

# Check formatting without changing files
fmt-check:
    cargo fmt --all -- --check

# Run clippy, treating warnings as errors
lint:
    cargo clippy --workspace --all-targets --all-features --locked -- -D warnings

# Build docs, treating warnings as errors
doc:
    RUSTDOCFLAGS="-D warnings" cargo doc --workspace --no-deps --all-features --locked

# Check dependencies for advisories, licenses, bans, and sources (needs cargo-deny)
deny:
    cargo deny check

# Spell-check the repository (needs typos-cli)
typos:
    typos

# Run everything CI runs
ci: fmt-check lint test doc deny typos
