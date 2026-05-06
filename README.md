# meridian-parse-csv-mark

`meridian-parse-csv-mark` explores parsers with a small Ruby codebase and local fixtures. The technical goal is to implement a Ruby parsers project for csv policy evaluation, using deny and allow fixtures and explainable decision traces.

## Problem It Tries To Make Smaller

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Meridian Parse Csv Mark Review Notes

For a quick review, compare `error locality` with `token drift` before reading the middle cases.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-parse-csv-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `token drift`, `grammar width`, `label quality`, and `error locality`.

The Ruby implementation avoids hidden state so fixture changes are easy to reason about.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 209, which lands in `ship`. The most cautious case is `baseline` at 153, which lands in `ship`.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
