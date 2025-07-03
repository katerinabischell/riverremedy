# River Remedy  
**Heavy-Metal Contamination in the Pilcomayo River (Chuquisaca, Bolivia, 2006)**  

This repo revisits the 2006 Fundación I.T.A. field survey of **water, soil, sediment, vegetation, fish, human blood, and animal blood** samples collected across twelve Pilcomayo-basin communities. All concentrations are benchmarked against WHO drinking-water limits, Codex Alimentarius food standards, CDC blood-lead guidance, and Bolivian regulatory thresholds. Primary insights and visuals live in a Quarto report; tidy data and helper scripts let you reproduce or extend every plot.

---

## Repository layout
.
├── 00.qmd / 01.Rmd / 02.qmd / 03.qmd # Analysis chapters / scratch notebooks
├── 00.html / 01.pdf / 02.html / 03.html # Rendered outputs
├── 00_files/ 02_files/ 03_files/ # Auto-generated asset folders (Quarto/knitr)
├── WHO_standards.qmd # Standards exploration notebook
├── WHO_standards.html # Rendered web version
├── WHO_standards_final.qmd # Polished multi-threshold report
├── WHO_standards_final.html # Final interactive report (OPEN ME!)
├── WHO_standards_pdf.Rmd # PDF build of the standards report
├── WHO_standards_pdf.pdf # PDF
├── WHO_standards_pdf_02.* # Scratch notebook
├── WHO_standards_files/ # HTML dependencies
├── data/ # Raw CSVs from the 2006 study
├── scripts/ # Helper R functions (import, wrangle, viz)
├── outputs/figs/ # Plots appear here on render
├── docs/2006_Pilcomayo_ITA_Informe_Final.pdf # Original study (for citation)
├── riverremedy.Rproj # RStudio project file
└── README.md # You’re here

## Data & reference standards

| Source | Purpose |
| --- | --- |
| **Fundación Instituto de Tecnología de Alimentos (I.T.A.)** (2006). *Informe Final: Muestreo…* | Primary field & lab dataset |
| **WHO** (2017). *Guidelines for Drinking-water Quality* | Drinking-water limits |
| **Codex Alimentarius** (CXS 193-1995 Rev 2018). *General Standard for Contaminants and Toxins in Food and Feed* | Food / vegetable limits |
| **CDC** (2021). *Blood Lead Reference Value* | Human & animal blood thresholds |
