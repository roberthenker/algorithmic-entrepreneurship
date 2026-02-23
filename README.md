# Replication Materials – Algorithmic Entrepreneurship

Data for WIKKI26 paper algorithmic entrepreneurship with study data and sql querries

This repository contains replication materials for the paper:

Henker, R., & Halecker, B. (2026).  
Algorithmic Entrepreneurship.

---

## Repository Structure

### /sql
Reproducible SQL queries used to compute annual protocol revenue figures for:

- Sky Protocol (MakerDAO)
- Hyperliquid

The queries retrieve daily revenue data from the DefiLlama API via Dune Analytics (HTTP_GET) and aggregate results to annual values.

Each SQL file documents:
- Data source
- Query URL
- Extraction date
- Time coverage
- Revenue definition

Revenue values reflect the API state at the extraction date specified in each SQL file.

---

### /data

This folder contains aggregated datasets used in the published tables.

- `table2_operational_scaling_2021_2024.xlsx`  
  Aggregated annual operational metrics used for Table 2 in the paper, including:
  - Total transactions
  - Total trading volume (USD)
  - Average full-time equivalents (FTE)
  - Output-to-employee ratios

---

## Data Sources

### Tether
Financial figures are based on publicly available issuer disclosures and attestation-related news releases published by Tether Holdings Ltd.

### Sky Protocol (MakerDAO) & Hyperliquid
Protocol revenue figures are derived from publicly accessible DefiLlama data, retrieved via reproducible Dune Analytics queries and aggregated to annual sums.

---

## Proprietary Data Disclosure

The operational metrics underlying Table 2 originate from proprietary transaction-level records of the analyzed firm.

Only aggregated annual values required to reproduce the published results are provided in this repository. No transaction-level raw data are disclosed.

---

## Reproducibility

All revenue aggregation procedures are fully reproducible using the provided SQL queries and publicly accessible data sources.

Extraction windows and data coverage are explicitly defined within each SQL file.

---

## License

This repository is provided for academic reproducibility purposes.
