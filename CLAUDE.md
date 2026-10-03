# CLAUDE.md

`gdho` is an openwashdata R data package with the Global Database of Humanitarian Organizations collected by Humanitarian Outcomes. It ships two datasets, `gdho` and `gdho_full`.

## Package facts

- Raw data: `data-raw/gdho.csv` (latin1 encoded) and the source read-me `data-raw/gdho_read_me.xlsx`.
- Processing script: `data-raw/data-processing.R`. It writes `data/gdho.rda`, `data/gdho_full.rda`, the CSV and XLSX exports in `inst/extdata/`, and builds `data-raw/dictionary.csv` from the read-me.
- Branches: work and review PRs go to `dev`; `main` holds released versions.

## Reviews and releases

Reviews and releases follow the installed pkgreview skills. `/review-package` starts a review, `/review-issue` works through one review issue, `/create-release` makes a release and `/add-doi` adds the Zenodo DOI. The skills hold the steps and the current standards, so this file does not repeat them.
