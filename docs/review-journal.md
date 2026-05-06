# Review Journal

The repository goal stays the same: develop a Swift command-oriented project for ledger scenarios with bounded scenario files, conflict explanations, and fixture-scale datasets. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its databases focus without claiming live deployment or external usage.

## Cases

- `baseline`: `index fit`, score 230, lane `ship`
- `stress`: `join width`, score 152, lane `ship`
- `edge`: `constraint risk`, score 116, lane `watch`
- `recovery`: `plan drift`, score 197, lane `ship`
- `stale`: `index fit`, score 231, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
