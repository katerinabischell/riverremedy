# River Remedy
**Comprehensive Heavy-Metal Contamination Analysis in the Pilcomayo River Basin (Bolivia)**

This repository contains multi-temporal environmental contamination analyses spanning nearly two decades of research in the Pilcomayo River system, featuring **historical baseline data (2006)**, **detailed acid mine drainage studies (2011)**, and **current lithium mining impact assessments (2024)**. All concentrations are benchmarked against WHO drinking-water limits, Codex Alimentarius food standards, and CDC blood-lead guidance.

## Analysis Overview

### 2006 ITA Baseline Study
**Heavy-Metal Contamination Assessment - Twelve Pilcomayo Basin Communities**
- Fundación I.T.A. comprehensive field survey
- **Multi-matrix sampling**: water, soil, sediment, vegetation, fish, human blood, and animal blood
- Community-level health impact assessment
- Establishes critical baseline contamination levels

### 2011 Strosnider Cerro Rico Analysis 
**Acid Mine Drainage (AMD) Chemistry - Five Centuries of Mining Impact**
- **13 comprehensive analytical studies** of Cerro Rico de Potosí
- Extreme contamination documentation (pH as low as 0.9)
- Seasonal variation analysis (dry 2006 vs wet 2007)
- Regulatory compliance assessment vs Bolivian discharge standards
- Most complete characterization of historic mining contamination

### 2024 TNC Pilcomayo Monitoring 
**Water & Sediment Quality Assessment - Lithium Mining Impact Zone**
- TNC Pilcomayo.net monitoring network data
- **Spatial contamination mapping** with interactive visualization
- **Mining-specific contaminants** (Bi, Tl, B, Li) analysis
- **Bilingual reporting** (Spanish and English)
- Environmental risk assessment framework

## Key Reports & Entry Points

| Analysis Period | Primary Report | Focus Area | Status |
|----------------|----------------|------------|---------|
| **2024 Current** | `src/analysis/data-exploration.qmd/pilcomayo.net_english.html` | **Lithium mining impacts & spatial analysis** | **Latest Results** |
| **2006 Baseline** | `outputs/html/final-report-updated.html` | Multi-matrix community contamination | Historical Reference |
| **2011 Cerro Rico** | `src/analysis/data-exploration.qmd/strosnider_2011_*.html` | **Acid mine drainage extreme contamination** | **Most Comprehensive** |

### 2024 Analysis Files ⭐ **NEW**
| File | Language | Description |
|------|----------|-------------|
| `pilcomayo.net_spanish.qmd` | 🇪🇸 Spanish | Original analysis for local stakeholders |
| `pilcomayo.net_english.html` | 🇪🇸 English | Rendered interactive report |
| `calidad_agua_20250711060422.csv` | Data | TNC water quality monitoring |
| `calidad_sedimentos_20250711060913.csv` | Data | TNC sediment quality monitoring |

### 2011 Strosnider Analysis Collection
**13 Comprehensive Studies** (in `src/analysis/data-exploration.qmd/`):
- `strosnider_2011_00.qmd` through `strosnider_2011_12.qmd`
- **Extreme contamination cases**: Fe up to 72,100 mg/L, pH down to 0.9
- **Regulatory analysis**: Violations by orders of magnitude
- **Seasonal patterns**: Wet vs dry season metal loading
- **Treatment recommendations**: Passive treatment system design

## Repository Structure

```
riverremedy/
├── README.md                           # You're here
├── riverremedy.Rproj                   # RStudio project file
├── src/
│   ├── analysis/                       # Analysis notebooks and reports
│   │   ├── data-exploration.qmd/       # CURRENT: Contains all 2024 & 2011 analysis
│   │   │   ├── pilcomayo.net_spanish.qmd       # 2024 TNC analysis (Spanish)
│   │   │   ├── pilcomayo.net00.html            # 2024 rendered report
│   │   │   ├── strosnider_2011_00.qmd          # 2011 Cerro Rico analysis #1
│   │   │   ├── strosnider_2011_01.qmd          # 2011 Cerro Rico analysis #2
│   │   │   ├── ... (11 more strosnider files)  # Complete 2011 analysis suite
│   │   │   └── strosnider_2011_12.qmd          # 2011 Cerro Rico analysis #13
│   │   ├── final-report.qmd            # 2006 ITA main report
│   │   ├── final-report-updated.qmd    # 2006 ITA updated analysis
│   │   ├── contamination-analysis.qmd  # 2006 contamination assessment
│   │   ├── preliminary-analysis.Rmd    # 2006 preliminary analysis
│   │   ├── standards-exploration.qmd   # Regulatory standards analysis
│   │   ├── standards-report-v2.Rmd     # Advanced standards analysis
│   │   └── visualization-analysis.qmd  # 2006 data visualization
│   ├── scripts/                        # Helper R functions
│   └── templates/                      # Reusable templates
├── data/
│   ├── raw/                           # Original field & lab data
│   │   ├── calidad_agua_20250711060422.csv         # 2024 TNC water data
│   │   ├── calidad_sedimentos_20250711060913.csv   # 2024 TNC sediment data
│   │   ├── ITA_water_2006.csv          # 2006 water samples
│   │   ├── ITA_soil_2006.csv           # 2006 soil samples  
│   │   ├── ITA_sed_2006.csv            # 2006 sediment samples
│   │   ├── ITA_veg_2006.csv            # 2006 vegetation samples
│   │   ├── ITA_fish_2006.csv           # 2006 fish samples
│   │   ├── ITA_human_2006.csv          # 2006 human blood samples
│   │   ├── ITA_animal_2006.csv         # 2006 animal blood samples
│   │   ├── Strosnider_2011_metal_data_dry_2006.xlsx    # 2011 dry season metals
│   │   ├── Strosnider_2011_metal_data_wet_2007.xlsx    # 2011 wet season metals
│   │   ├── Strosnider_2011_physical_data_all.xlsx      # 2011 physical parameters
│   │   ├── Strosnider_2011_physical_data_dry_2006.xlsx # 2011 dry season physical
│   │   └── Strosnider_2011_physical_data_wet_2007.xlsx # 2011 wet season physical
│   ├── processed/                      # Cleaned and processed data
│   └── standards/                      # WHO, Codex, CDC reference tables
├── outputs/
│   ├── html/                          # Rendered HTML reports
│   │   ├── final-report.html          # **2006 MAIN REPORT**
│   │   └── [other 2006 reports]
│   ├── pdf/                           # PDF outputs
│   ├── figures/                       # Generated plots and visualizations
│   └── assets/                        # Auto-generated files
└── docs/                              # Documentation
```

## Quick Start

### For 2024 Current Analysis (Recommended Starting Point)
1. **Clone repository**: `git clone https://github.com/katerinabischell/riverremedy.git`
2. **Open in RStudio**: Double-click `riverremedy.Rproj`
3. **View latest results**: Open `src/analysis/data-exploration.qmd/pilcomayo.net_english.html`
4. **Explore source**: Navigate to `src/analysis/data-exploration.qmd/pilcomayo.net_spanish.qmd`

### For 2011 Cerro Rico Extreme Contamination Analysis
1. **Comprehensive study**: Choose from `strosnider_2011_00.qmd` through `strosnider_2011_12.qmd`
2. **Start with overview**: `strosnider_2011_00.qmd` (site characterization)
3. **Extreme cases**: `strosnider_2011_12.qmd` (enhanced analysis with regulatory compliance)

### For 2006 Historical Baseline
1. **Main report**: Open `outputs/html/final-report-updated.html`
2. **Source analysis**: Navigate to `src/analysis/final-report-updated.qmd`

## Analysis Highlights

### 2024 TNC Monitoring
- **Interactive contamination mapping** with real-time visualization
- **Heavy metals vs WHO guidelines** with exceedance analysis
- **Mining-specific contaminants** (Bi, Tl, B, Li) assessment
- **Environmental risk categorization** (Safe → Critical)
- **Priority remediation sites** identification
- **Bilingual accessibility** for international collaboration

### 2011 Strosnider Cerro Rico (13 Studies)
- **Extreme contamination documentation** (pH 0.9, Fe 72,100 mg/L)
- **Comprehensive seasonal analysis** (dry vs wet season loading)
- **Regulatory compliance assessment** (Bolivian discharge standards)
- **Historical impact quantification** (five centuries of mining)
- **Treatment system recommendations** (passive treatment design)
- **Multiple analytical approaches** (13 different methodologies)

### 2006 ITA Baseline
- **Multi-matrix contamination** (water, soil, sediment, biota, blood)
- **Community health assessment** (12 Pilcomayo basin communities)
- **Baseline establishment** for long-term monitoring
- **Multiple exposure pathways** documented

## Data Sources & Standards

| Dataset | Year | Source | Scope | Samples |
|---------|------|--------|-------|---------|
| **TNC Pilcomayo.net** | 2024 | TNC Bolivia | Water & sediment monitoring | Multiple stations |
| **Strosnider et al.** | 2006-2007 | *Applied Geochemistry* (2011) | Cerro Rico AMD characterization | 32+ discharge points |
| **Fundación I.T.A.** | 2006 | *Informe Final: Muestreo...* | Multi-matrix basin survey | 7 sample types × 12 communities |

### Reference Standards
| Standard | Purpose | Application |
|----------|---------|-------------|
| **WHO** (2017) *Guidelines for Drinking-water Quality* | Water quality limits | All water assessments |
| **Codex Alimentarius** (CXS 193-1995 Rev 2018) | Food contamination limits | Vegetation/fish analysis |
| **CDC** (2021) *Blood Lead Reference Value* | Health impact thresholds | Human/animal blood assessment |
| **Bolivia Law 1333** (1992) | National discharge limits | Regulatory compliance analysis |

## 🔄 Reproducing Analysis

### Requirements
```r
# Core packages for all analyses
install.packages(c(
  "tidyverse", "readr", "ggplot2", "readxl", 
  "leaflet", "DT", "plotly", "corrplot",
  "scales", "viridis", "patchwork", "knitr", 
  "quarto", "janitor", "lubridate"
))
```

### Running 2024 Analysis
1. Ensure data files are in `data/raw/`
2. Open `src/analysis/data-exploration.qmd/pilcomayo.net_spanish.qmd`
3. Update file paths if needed: `../../data/raw/calidad_agua_20250711060422.csv`
4. Render to HTML or run chunks interactively

### Running 2011 Strosnider Analysis
1. Navigate to `src/analysis/data-exploration.qmd/`
2. Choose from `strosnider_2011_00.qmd` through `strosnider_2011_12.qmd`
3. Data files automatically loaded from `data/raw/Strosnider_2011_*.xlsx`

### Running 2006 ITA Analysis
1. Open `src/analysis/final-report.qmd`
2. Data automatically loaded from `data/raw/ITA_*.csv`
3. Render for complete interactive report

## 🎯 Key Findings Summary

### 2024 Monitoring Results
- **Current contamination status** in lithium mining impact zones
- **Spatial patterns** indicating point-source and diffuse contamination
- **Priority sites identified** for immediate environmental intervention
- **Mining-related metals** detected at concerning levels

### 2011 Cerro Rico Findings (Strosnider et al.)
- **Extreme acidification**: pH values as low as 0.9 (comparable to battery acid)
- **Massive metal loading**: Fe concentrations up to 72,100 mg/L
- **Orders of magnitude** exceedances of regulatory limits
- **Five centuries** of continuous contamination contribution
- **Seasonal mobilization** patterns documented

### 2006 Baseline Assessment
- **Multi-pathway exposure** documented across 12 communities
- **Blood contamination** in human and animal populations
- **Ecosystem-wide impacts** across all environmental matrices
- **Historical contamination baseline** established

## Contributing & Citation

### Contributing
This repository documents ongoing environmental research. Contributions welcome for:
- **Temporal trend analysis** (comparative studies across time periods)
- **Additional monitoring data** integration
- **Treatment technology assessments**
- **Community health impact studies**

### Citation
```
Bischel, K. (2025). River Remedy: Multi-Temporal Heavy-Metal Contamination 
Analysis in the Pilcomayo River Basin (Bolivia). GitHub repository: 
https://github.com/katerinabischell/riverremedy

Based on data from:
- Strosnider, W.H.J., et al. (2011). Applied Geochemistry 26(12): 2017-2033
- Fundación I.T.A. (2006). Informe Final: Muestreo de Contaminantes
- TNC Bolivia (2024). Pilcomayo.net monitoring network
```


## Analysis Statistics
- **Total Studies**: 20+ comprehensive analyses
- **Time Span**: 2006-2024 (18+ years)
- **Data Points**: 1000+ samples across multiple matrices
- **Contamination Sites**: 50+ monitoring locations
- **Regulatory Standards**: 4 major frameworks (WHO, Codex, CDC, Bolivia)

---
*Last updated: July 2025 | Featuring 2024 TNC monitoring, comprehensive 2011 Strosnider Cerro Rico analysis (13 studies), and 2006 ITA baseline assessment*
