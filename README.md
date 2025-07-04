# River Remedy
**Heavy-Metal Contamination in the Pilcomayo River (Chuquisaca, Bolivia, 2006)**

This repo revisits the 2006 Fundación I.T.A. field survey of **water, soil, sediment, vegetation, fish, human blood, and animal blood** samples collected across twelve Pilcomayo-basin communities. All concentrations are benchmarked against WHO drinking-water limits, Codex Alimentarius food standards, CDC blood-lead guidance, and Bolivian regulatory thresholds. Primary insights and visuals live in a Quarto report; tidy data and helper scripts let you reproduce or extend every plot.

## Repository Structure

```
riverremedy/
├── README.md                           # You're here
├── riverremedy.Rproj                   # RStudio project file
├── src/
│   ├── analysis/                       # Analysis notebooks and reports
│   │   ├── data-exploration.qmd        # Initial data exploration
│   │   ├── preliminary-analysis.Rmd    # Preliminary analysis
│   │   ├── contamination-analysis.qmd  # Contamination analysis
│   │   ├── visualization-analysis.qmd  # Data visualization
│   │   ├── standards-exploration.qmd   # Standards exploration
│   │   ├── final-report.qmd           # Final interactive report (OPEN ME!)
│   │   ├── standards-report-pdf.Rmd   # PDF build of standards report
│   │   └── standards-report-v2.Rmd    # Additional standards analysis
│   ├── scripts/                        # Helper R functions (import, wrangle, viz)
│   └── templates/                      # Reusable templates
├── data/
│   ├── raw/                           # Original 2006 field & lab data
│   │   ├── ITA_water_2006.csv         # Water samples
│   │   ├── ITA_soil_2006.csv          # Soil samples
│   │   ├── ITA_sed_2006.csv           # Sediment samples
│   │   ├── ITA_veg_2006.csv           # Vegetation samples
│   │   ├── ITA_fish_2006.csv          # Fish samples
│   │   ├── ITA_human_2006.csv         # Human blood samples
│   │   └── ITA_animal_2006.csv        # Animal blood samples
│   ├── processed/                      # Cleaned and processed data
│   └── standards/                      # WHO, Codex, CDC reference tables
├── outputs/
│   ├── html/                          # Rendered HTML reports
│   │   ├── data-exploration.html
│   │   ├── contamination-analysis.html
│   │   ├── visualization-analysis.html
│   │   ├── standards-exploration.html
│   │   ├── final-report.html          # **START HERE** - Main report
│   │   └── standards-report-v2.html
│   ├── pdf/                           # PDF outputs
│   │   ├── preliminary-analysis.pdf
│   │   └── standards-report.pdf
│   ├── figures/                       # Generated plots and visualizations
│   └── assets/                        # Auto-generated files (Quarto/knitr)
├── docs/                              # Documentation
│   └── references/                    # Reference materials
└── config/                            # Configuration files
```

## Quick Start

1. **Clone the repository**: `git clone https://github.com/katerinabischell/riverremedy.git`
2. **Open in RStudio**: Double-click `riverremedy.Rproj`
3. **View main results**: Open `outputs/html/final-report.html` in your browser
4. **Explore analysis**: Navigate to `src/analysis/` for source notebooks
5. **Access data**: Raw data files are in `data/raw/`

## Key Files

- **📊 Main Report**: `outputs/html/final-report.html` - Interactive report with all findings
- **📈 Data Exploration**: `src/analysis/data-exploration.qmd` - Initial data analysis
- **🏭 Contamination Analysis**: `src/analysis/contamination-analysis.qmd` - Heavy metal analysis
- **📋 Standards Comparison**: `src/analysis/standards-exploration.qmd` - Regulatory benchmarking

## Data & Reference Standards

| Source | Purpose |
|--------|---------|
| **Fundación Instituto de Tecnología de Alimentos (I.T.A.)** (2006). *Informe Final: Muestreo…* | Primary field & lab dataset |
| **WHO** (2017). *Guidelines for Drinking-water Quality* | Drinking-water limits |
| **Codex Alimentarius** (CXS 193-1995 Rev 2018). *General Standard for Contaminants and Toxins in Food and Feed* | Food / vegetable limits |
| **CDC** (2021). *Blood Lead Reference Value* | Human & animal blood thresholds |

## Reproducing Analysis

To reproduce the analysis:

1. Ensure you have R and RStudio installed
2. Install required packages (Quarto, tidyverse, etc.)
3. Open any `.qmd` or `.Rmd` file in `src/analysis/`
4. Run the analysis notebooks to regenerate outputs

## Contributing

This repository documents a historical environmental study. For questions about the data or analysis methods, please open an issue or contact the repository maintainer.