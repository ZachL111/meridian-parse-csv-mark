# Meridian Parse Csv Mark Walkthrough

This note is the quickest way to read the extra review model in `meridian-parse-csv-mark`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 153 | ship |
| stress | grammar width | 187 | ship |
| edge | label quality | 191 | ship |
| recovery | error locality | 209 | ship |
| stale | token drift | 205 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around grammar width and error locality.
