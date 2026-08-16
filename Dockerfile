# n8n image for the Railway "n8n" service.
#
# IMPORTANT: keep this tag PINNED to an explicit version.
# Using `:latest` means any redeploy -- including an accidental or unrelated
# one -- silently upgrades n8n and runs one-way Postgres schema migrations
# against the n8n_Internal_Brain database. Upgrades must be a deliberate,
# reviewable one-line change here.
#
# Current pin matches the version that was already running in production
# (deployment 00db7e69, 2026-07-23), so building this is a no-op upgrade.
#
# Before bumping this tag:
#   1. back up n8n_Internal_Brain (PITR is enabled, but take a manual dump too)
#   2. read the release notes for breaking changes to nodes in use
#   3. bump one minor line at a time, verifying workflows in between
FROM n8nio/n8n:2.31.5

USER root
