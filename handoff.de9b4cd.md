# Handoff — de9b4cd

## Commit
`de9b4cd` — ✨ feat: initial MCT-MIP GeoMIP7 manuscript (v2)

## What was done
- Built and iteratively refined `mct_geomip_section.tex` — the MCT-L1 section for the GeoMIP CMIP7 paper (Visioni et al.)
- Structured two main components: **Level 0 results** (4-model intercomparison) and **Level 1 protocol**
- Added and iterated on two figures: spatial CRE maps (`fig:dcre_maps`) and 2×2 Arctic overlay panel (`fig:arctic_overlay`: CRE, IWP, LWP, TWP)
- Populated `references.bib` with 7 real entries from CrossRef DOIs: Villanueva2022ERL, Villanueva2025Science, Niemand2012, Lohmann2006, Wang2014, Stengel2020, Bodas-Salcedo2011, Vergara-Temprado2018
- Added co-authors (Hirasawa, Paul, Vella) with emails to `main.tex`
- Added `\usepackage{subcaption}`, `graphicx`, `multirow` to preamble
- Created GitHub repo `diegovillanueva/geomip-cmip7-mct` and pushed

## Current state
- **Compiles cleanly** with `make` (latexmk, pdflatex, bibtex)
- `figures/` copied into `v2/` for self-contained repo (Overleaf-ready, but figure paths need `figures/` not `../figures/`)
- All 7 bib entries are real and DOI-verified

## Next steps
- [ ] Fix figure paths for Overleaf: change `../figures/` → `figures/` in `mct_geomip_section.tex` (5 occurrences)
- [ ] Import to Overleaf via GitHub integration (`diegovillanueva/geomip-cmip7-mct`)
- [ ] Replace `Figure~[X]` placeholders (none remaining, but double-check)
- [ ] Fill in `ocar.auto.tex` / `mainJoined.tex` — not yet tracked, unclear purpose
- [ ] TWP panel in Fig. 2 — verify `twp_arctic_NDJF_overlay.png` matches other panels in style
- [ ] Add ICON-HAM (Niemand) / ICON-HAM (LD06) distinction to Table 1 if needed
- [ ] Level 0 INP units inconsistency: text uses L⁻¹ but figures use cm⁻³ — clarify

## Key decisions
- Table 1 split into 2×2 block (ECHAM+ICON top, CESM+E3SM bottom) to avoid overfull hbox
- MCT-L1 simulation groups named **MCT-L1-Seeding** (additive) and **MCT-L1-Background** (multiplicative); Background ordered low→high = ×10⁻⁶ → ×10⁻²
- ECHAM-HAM (MLO/full) shown in Fig. 2 for reference only — noted in text, not caption
- TWP observation reference: Cloud_cci v3 (`Stengel2020`, ESSD 2020)
- Figure paths use `../figures/` relative to `v2/` — needs changing for Overleaf
