# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 153, lane `ship`
- `stress`: `grammar width`, score 187, lane `ship`
- `edge`: `label quality`, score 191, lane `ship`
- `recovery`: `error locality`, score 209, lane `ship`
- `stale`: `token drift`, score 205, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
