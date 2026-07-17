# 3887 Seneca — Underwriting Data Fill Template

Locked values are filled from the **sale contract** and **Luxe Loft 716** deck. Complete remaining `[FILL]` before sending to Cornerstone.

**Legend:** Locked · Open · Verify

---

## A. Deal identity

| Field | Value | Status |
|-------|-------|--------|
| Property | 3887 Seneca Street, West Seneca, NY 14224-3489 | Locked |
| Brand | Luxe Loft 716 | Locked |
| Borrower | IJB Enterprises Inc. | Locked |
| Lender | Cornerstone Community FCU · Michael Woods | Locked |
| Guarantor(s) | `[FILL]` | Open |
| Contract date | 2026-06-16 | Locked |
| Closing target | `[FILL]` | Open |

---

## B. Acquisition (contract)

| Field | Value | Status |
|-------|-------|--------|
| Purchase price | **$500,000** | Locked |
| Seller concession | **$50,000** | Locked |
| Net consideration | **$450,000** | Locked |
| Deposit | **$10,000** | Locked |
| Escrow | Kreag Ferullo / Steiner & Blotnik | Locked |
| Appraised value | `[FILL]` | Open |
| Loan amount requested | `[FILL]` | Open |
| LTV | `[FILL]%` | Open |
| Rate / term / amort | `[FILL]` | Open |
| Closing costs est. | `[FILL]` | Open |

---

## C. Residential

| Field | Value | Status |
|-------|-------|--------|
| Units | 2 | Locked |
| Apt 1 annual (deck) | $13,200 | Locked (deck) |
| Apt 2 annual (deck) | $15,600 | Locked (deck) |
| Combined monthly (deck) | **$2,400** | Locked underwriting baseline |
| Combined annual (deck) | **$28,800** | Locked underwriting baseline |
| Chat figure (unverified) | $2,600/mo ($31,200/yr) | Verify with leases |
| Lease end dates | `[FILL]` | Open |
| Vacancy today | `[FILL]` | Open |

---

## D. Salon suites

| Field | Value | Status |
|-------|-------|--------|
| Suite count (bank target) | **9** | Locked (Luxe) |
| Suite income / yr | **$108,000** | Locked (Luxe) |
| Avg / suite / mo | $1,000 | Implied |
| Measured 1st-floor SF | `[FILL]` | Open — critical |
| Layout sketch | Yes / No | Open |
| Gemini prototype ref | 8 suites / 1,200 sf | Engineering only |

---

## E. Stabilized P&L (Luxe)

| Field | Value | Status |
|-------|-------|--------|
| GPI | **$136,800** | Locked |
| OpEx (implied) | $40,880 | Locked (derived) |
| NOI | **$95,920** | Locked |
| Debt service (placeholder) | **$31,944** | Locked until quote |
| DSCR | **3.00** | Locked until quote |

---

## F. CapEx

| Line | Amount | Status |
|------|--------|--------|
| Partitions / doors | `[FILL]` | Open |
| Electrical / data | `[FILL]` | Open |
| Plumbing / sinks | `[FILL]` | Open |
| HVAC / ventilation | `[FILL]` | Open |
| Fire / life safety | `[FILL]` | Open |
| Finishes | `[FILL]` | Open |
| Soft costs | `[FILL]` | Open |
| Contingency | `[FILL]` | Open |
| **Total CapEx** | `[FILL]` | Open |

---

## G. Sources & uses

See `SOURCES_AND_USES.md`. Totals must match.

| Total uses | `[FILL]` |
| Total sources | `[FILL]` |

---

## H. Sign-off

| Role | Name | Date |
|------|------|------|
| Prepared by | `[FILL]` | |
| Reviewed by | `[FILL]` | |

When complete: update `../../project-data.json`, run `.\Update-ProjectData.ps1 -ValidateOnly`.
