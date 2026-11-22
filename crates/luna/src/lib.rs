//! Luna core crate.
//!
//! Placeholder so the workspace builds; replace with real code.

/// Returns the crate version.
#[must_use]
pub fn version() -> &'static str {
    env!("CARGO_PKG_VERSION")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn version_is_set() {
        assert_ne!(version(), "");
    }
}
