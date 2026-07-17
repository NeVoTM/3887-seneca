# 3887 Seneca — Underwriting Data Fill Template
Complete every `[FILL]` cell. Known values are pre-filled. When done, copy numbers into `project-data.json` and regenerate the bank package.

**Status legend:** ✅ known · 🟡 fill before bank send · ⬜ optional / later

---

## A. Deal identity

| Field | Value | Status |
|-------|-------|--------|
| Property address | 3887 Seneca Street, West Seneca, NY | ✅ |
| Borrower | IJB Enterprises Inc. | ✅ |
| Lender | Cornerstone Community Federal Credit Union | ✅ |
| Lender contact | Michael Woods | ✅ |
| Guarantor(s) | `[FILL names]` | 🟡 |
| Closing target date | `[FILL]` | 🟡 |

---

## B. Acquisition

| Field | Value | Status |
|-------|-------|--------|
| Purchase price | `$[FILL]` | 🟡 |
| Earnest money | `$[FILL]` | 🟡 |
| Contract date | `[FILL]` | 🟡 |
| Appraised value | `$[FILL]` | 🟡 |
| LTV requested | `[FILL]%` | 🟡 |
| Loan amount requested | `$[FILL]` | 🟡 |
| Term / amortization | `[FILL]` | 🟡 |
| Interest rate (indicative) | `[FILL]%` | 🟡 |
| Estimated closing costs | `$[FILL]` | 🟡 |

---

## C. Residential (known)

| Field | Value | Status |
|-------|-------|--------|
| Unit count | 2 | ✅ |
| Combined monthly rent | **$2,600** | ✅ |
| Combined annual rent | **$31,200** | ✅ |
| Unit 1 rent / mo | `$[FILL]` | 🟡 |
| Unit 2 rent / mo | `$[FILL]` | 🟡 |
| Lease end dates | `[FILL]` | 🟡 |
| Security deposits held | `$[FILL]` | ⬜ |
| Current vacancy | 0 / 1 / 2 vacant → `[FILL]` | 🟡 |

---

## D. First-floor SF & suite layout

| Field | Value | Status |
|-------|-------|--------|
| Measured 1st-floor SF (rentable / gross) | `[FILL]` sf | 🟡 **critical** |
| Lobby / corridor / restroom SF | `[FILL]` sf | 🟡 |
| Net suite SF | `[FILL]` sf | 🟡 |
| Working prototype (until measured) | 1,200 sf → 8 suites (5×100 + 3×150 + ~250 common) | ✅ assumption |
| Final suite count | `[FILL]` | 🟡 |
| Small suites count × SF | `[FILL] × [FILL]` | 🟡 |
| Large suites count × SF | `[FILL] × [FILL]` | 🟡 |
| Layout sketch attached? | Yes / No | 🟡 |

**Scale helper (optional):**  
`suite_count ≈ round( (measured_sf × 0.80) / 119 )` using ~119 sf avg suite from prototype (950÷8). Adjust after design.

---

## E. Salon suite income (fill after rents set)

| Field | Value | Status |
|-------|-------|--------|
| Avg rent / suite / month | `$[FILL]` | 🟡 |
| Small suite rent / mo | `$[FILL]` | ⬜ |
| Large suite rent / mo | `$[FILL]` | ⬜ |
| Underwritten occupancy | `[FILL]%` (suggest 85%) | 🟡 |
| Gross suite rent / yr @ 100% | `count × avg × 12` = `$[FILL]` | 🟡 |
| Effective suite rent / yr | `gross × occupancy` = `$[FILL]` | 🟡 |
| Other income (parking, CAM, Wi-Fi) | `$[FILL]/yr` | ⬜ |
| Lease-up months to stabilize | `[FILL]` | 🟡 |
| Pre-leases / LOIs in hand | `[FILL]` | ⬜ |

---

## F. Operating expenses (annual, stabilized)

| Line | Amount | Status |
|------|--------|--------|
| Real estate taxes | `$[FILL]` | 🟡 |
| Property insurance | `$[FILL]` | 🟡 |
| Utilities (landlord portion) | `$[FILL]` | 🟡 |
| Repairs & maintenance | `$[FILL]` | 🟡 |
| Cleaning / common area | `$[FILL]` | 🟡 |
| Property management (% or $) | `$[FILL]` | 🟡 |
| Marketing / leasing | `$[FILL]` | ⬜ |
| Reserves | `$[FILL]` | 🟡 |
| Misc | `$[FILL]` | ⬜ |
| **Total OpEx** | `$[FILL]` | 🟡 |

---

## G. Pro forma NOI (stabilized year)

| Line | Formula | Amount |
|------|---------|--------|
| Residential EGI | known or fill | `$31,200` or `$[FILL]` |
| Suite EGI | from §E | `$[FILL]` |
| Other income | | `$[FILL]` |
| **Total EGI** | | `$[FILL]` |
| − OpEx | from §F | `$[FILL]` |
| **NOI** | | `$[FILL]` |
| Annual debt service | | `$[FILL]` |
| **DSCR** | NOI ÷ debt service | `[FILL]` |

---

## H. Conversion CapEx

| Line | Amount | Status |
|------|--------|--------|
| Demolition / prep | `$[FILL]` | 🟡 |
| Partitions / doors (wall system) | `$[FILL]` | 🟡 |
| Electrical / data | `$[FILL]` | 🟡 |
| Plumbing / sinks | `$[FILL]` | 🟡 |
| HVAC / ventilation | `$[FILL]` | 🟡 |
| Fire / life safety | `$[FILL]` | 🟡 |
| Finishes / flooring / lighting | `$[FILL]` | 🟡 |
| Restrooms / common | `$[FILL]` | 🟡 |
| Soft costs (permits, design, legal) | `$[FILL]` | 🟡 |
| Contingency (10–15%) | `$[FILL]` | 🟡 |
| **Total CapEx** | `$[FILL]` | 🟡 |
| Preferred wall system | Industrial / Demountable / Hybrid → `[FILL]` | 🟡 |
| Contractor / bid date | `[FILL]` | ⬜ |

**Research cost bands (walls only):** $10–$35/sf industrial · $45–$110/sf demountable · ~$400/LF glass fronts.

---

## I. Sources & uses

| Uses | $ | Sources | $ |
|------|---|--------|---|
| Purchase | `[FILL]` | Loan | `[FILL]` |
| Closing costs | `[FILL]` | Equity / cash | `[FILL]` |
| CapEx | `[FILL]` | Other | `[FILL]` |
| Reserves / working capital | `[FILL]` | | |
| **Total** | `[FILL]` | **Total** | `[FILL]` |

Totals must match.

---

## J. Narrative bullets (for bank letter — edit freely)

- ✅ Acquire 3887 Seneca for salon micro-suites + 2 apartments  
- ✅ Residential rent roll $2,600/mo in place  
- ✅ Model proven in Buffalo: private suites → independent beauty operators  
- 🟡 Measured SF and final suite count: `[FILL]`  
- 🟡 Stabilized suite income: `$[FILL]/yr`  
- 🟡 Requested loan `$[FILL]` · equity `$[FILL]` · DSCR `[FILL]`

---

## K. Sign-off

| Role | Name | Date |
|------|------|------|
| Prepared by | `[FILL]` | `[FILL]` |
| Reviewed by | `[FILL]` | `[FILL]` |

When complete: update `../project-data.json`, run `.\Update-ProjectData.ps1 -ValidateOnly`, and attach this file + `BANK_QA_RESPONSE.md` to the Cornerstone package.
