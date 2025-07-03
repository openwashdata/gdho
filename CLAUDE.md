# CLAUDE.md - OpenWashData R Package Review Guide

This guide helps Claude Code review R data packages for the openwashdata organization, ensuring consistency, quality, and completeness across all published datasets.

## Overview

The review process follows a PLAN → CREATE → TEST → DEPLOY workflow triggered by a PR from dev to main branch. Each phase requires explicit user approval before proceeding.

## Review Workflow

### 1. PLAN Phase

When initiated via `/review-package [package-name]`, Claude will:

1. **Analyze Package Structure**
   - Verify package was created with `washr` template
   - Check for required directories: R/, data/, data-raw/, inst/extdata/, man/
   - Confirm presence of key files: DESCRIPTION, README.Rmd, _pkgdown.yml

2. **Create Review Issues** (5 GitHub issues)
   - Issue 1: General Information & Metadata
   - Issue 2: Data Content & Quality  
   - Issue 3: Data Processing Script Review
   - Issue 4: Documentation
   - Issue 5: Tests & CI/CD

3. **Present Review Plan**
   - Summary of findings
   - List of issues to be addressed
   - Request user confirmation before proceeding

### 2. CREATE Phase

After user approval, work through each issue systematically:

#### Issue 1: General Information & Metadata
- [ ] DESCRIPTION file completeness
  - Title (descriptive, <65 characters)
  - Description (clear purpose statement)
  - Authors with ORCID IDs
  - License: CC BY 4.0
  - Dependencies properly declared
  - Version follows semantic versioning
- [ ] CITATION.cff file present and valid
- [ ] Generate citation using `washr::compile_citation()`

#### Issue 2: Data Content & Quality
- [ ] Data files in data/ directory (.rda format)
- [ ] CSV/XLSX exports in inst/extdata/
- [ ] Main dataset accessible via function matching package name
- [ ] Data quality checks:
  - No unexpected missing values
  - Consistent data types
  - Reasonable value ranges
  - Proper encoding (UTF-8)

#### Issue 3: Data Processing Script Review
- [ ] data_processing.R in data-raw/
- [ ] Script is reproducible and well-commented
- [ ] Raw data files preserved in data-raw/
- [ ] dictionary.csv with variable descriptions
- [ ] Uses tidyverse conventions
- [ ] Handles data cleaning transparently

#### Issue 4: Documentation
- [ ] README.Rmd follows openwashdata template:
  - Dynamic content generation
  - Installation instructions
  - Data overview with dimensions
  - Variable dictionary table
  - License and citation sections
- [ ] Roxygen documentation for all exported functions
- [ ] _pkgdown.yml configured with:
  ```yaml
  template:
    bootstrap: 5
    includes:
      in_header: |
        <script defer data-domain="openwashdata.github.io" src="https://plausible.io/js/script.js"></script>
  ```
- [ ] Package website builds without errors

#### Issue 5: Tests & CI/CD
- [ ] GitHub Actions workflow for R-CMD-check
- [ ] Package passes `devtools::check()` with no errors/warnings
- [ ] Examples run successfully
- [ ] Data loads correctly

**For each issue**: Present planned changes and request user confirmation before implementing.

### 3. TEST Phase

Run comprehensive package checks:
```r
devtools::check()
devtools::build()
pkgdown::build_site()
```

Verify:
- All tests pass
- No R CMD check issues
- Documentation renders correctly
- Website builds successfully

### 4. DEPLOY Phase

1. Build and deploy pkgdown website
2. Verify Plausible analytics tracking
3. Confirm all changes are committed
4. Approve PR merge to main branch

## Key Standards

### Required Files Structure
```
package-name/
├── DESCRIPTION
├── NAMESPACE
├── R/
│   └── package-name.R
├── data/
│   └── package-name.rda
├── data-raw/
│   ├── data_processing.R
│   └── dictionary.csv
├── inst/
│   ├── CITATION
│   └── extdata/
│       ├── package-name.csv
│       └── package-name.xlsx
├── man/
├── README.Rmd
├── README.md
├── CITATION.cff
├── _pkgdown.yml
└── .github/
    └── workflows/
        └── R-CMD-check.yaml
```

### Package Dependencies
Common dependencies for data packages:
- dplyr, tidyr (data manipulation)
- readr, readxl (data import)
- janitor (data cleaning)
- desc (DESCRIPTION parsing)
- gt, kableExtra (table formatting)

### Quality Criteria
1. **Reproducibility**: All data processing steps documented and runnable
2. **Transparency**: Raw data preserved with clear transformation pipeline
3. **Accessibility**: Multiple export formats (R, CSV, XLSX)
4. **Documentation**: Comprehensive variable descriptions and usage examples
5. **Consistency**: Follows openwashdata naming and structure conventions

## Commands

- `/review-package [package-name]` - Start package review
- `/review-status` - Check current review progress
- `/review-issue [number]` - Work on specific issue
- `/review-pr` - Create pull request for current issue

## Important Notes

- Always request user confirmation between phases
- Check in with user before implementing changes in CREATE phase
- Preserve existing git history and commits
- Follow tidyverse style guide for R code
- Use semantic versioning for package versions

## Project Management with GitHub CLI

- List issues: `gh issue list`
- View issue details: `gh issue view 80` (e.g., for issue #80 "Rename geographies parameter")
- Create branch for issue: `gh issue develop 80`
- Checkout branch: `git checkout 80-rename-geographies-parameter-to-entities`
- Create pull request: `gh pr create --title "Rename geographies parameter to entities" --body "Implements #80"`
- List pull requests: `gh pr list`
- View pull request: `gh pr view PR_NUMBER`

## Build/Test/Check Commands

- Build package: `R CMD build .`
- Install package: `R CMD INSTALL .`
- Run all tests: `R -e "devtools::test()"`
- Run single test: `R -e "devtools::test_file('tests/testthat/test-FILE_NAME.R', reporter = 'progress')"`
- Run R CMD check: `R -e "devtools::check()"`
- Build Roxygen2 documentation: `R -e "devtools::document()"`
- Build vignettes: `R -e "devtools::build_vignettes()"`
- Build README.md from README.Rmd: `R -e "devtools::build_readme()"`

## Code Style Guidelines

- Use 2 spaces for indentation (no tabs)
- Maximum 80 characters per line
- Use tidyverse style for R code (`dplyr`, `tidyr`, `purrr`)
- Use snake_case for function and variable names

