# fathom-store-ledger-bench

`fathom-store-ledger-bench` keeps a focused Swift implementation around databases. The project goal is to develop a Swift command-oriented project for ledger scenarios with bounded scenario files, conflict explanations, and fixture-scale datasets.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how index fit and constraint risk should influence a review result.

## Fathom Store Ledger Bench Review Notes

The first comparison I would make is `index fit` against `constraint risk` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/fathom-store-ledger-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `constraint risk`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Swift path is deliberately direct, with fixtures doing most of the explaining.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Next Improvements

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
