### **Name:** Mendez Gomez

### **First Name:** Jose Aram

### **Student ID:** 5020343

**Date:** 15.08.2025
**Reporting Period:** 01.08.2025 – 15.08.2025
**Status:** 🟢 Green — Finalization (evaluation complete, tests closed, documentation focus)

---

### ✅ Work Completed

* **Evaluation of Search Functionality (Closed)**

  * Ran the 30-query pilot; compiled **P\@k, MRR\@5, nDCG\@10**, and **latency P50/P95**.
  * **Locked production configuration to tuned weights:** **Hybrid = (semantic 0.80, BM25 0.10, fuzzy 0.10)** with **semantic gate τ = 0.30** and per-query **min–max normalization**; relevance re-rank kept off by default.
  * Captured dataset snapshot, configs, and scripts to ensure **reproducibility**.

* **Last Tests & Stabilization**

  * Unit tests for normalization, semantic gate, and facet filtering; integration test for end-to-end search.
  * UI fixes: percent bars only for normalized scores, rank badges, concise tooltips.
  * Data checks: verified embeddings parse to **1024 numbers**; flagged malformed rows.

* **Documentation (Code + Thesis)**

  * Code: updated **README**, module docstrings, config reference, and a brief **runbook** (start, evaluate, profile).
  * Thesis: expanded **Chapter 6 (Evaluation)**, standardized labels/refs, aligned terminology.

* **Pipeline & Repo Hygiene**

  * Early pre-filters before scoring; simplified score plumbing to the UI.
  * Pinned requirements; added helper scripts (`run`, `eval`, `profile`); cleaned directory layout.
  * **Precomputed embeddings** stored in the database; **BM25 keywords** refreshed where needed.

---

### 🔎 Evaluation — Brief Deep Dive (final)

* **Method.** 30 labeled queries; candidate pool = union of top-20 from each signal (BM25 / semantic / fuzzy), de-duplicated by rule ID.
* **Outcome.** Tuned **Hybrid (0.80/0.10/0.10)** consistently outperforms single signals; **τ = 0.30** gate reduces off-topic items without hurting recall in the pilot.
* **Signals.** Semantic drives recall and graded relevance; BM25 anchors institutional terms; fuzzy acts as a light tie-breaker.
* **Robustness.** Small weight changes (±0.1–0.2) do not collapse performance; stable plateau around tuned weights.
* **Latency.** With early pre-filters and in-memory indices, end-to-end latency meets target (**P95 ≤ 1000 ms**) on typical pools.
* **Status.** Evaluation **closed** — no further tests planned; focus moves to documentation and packaging.

---

### 🛠 Work Planned (Next Period)

* Full **thesis review** (cross-refs, BibLaTeX build, captions, figure placeholders) and final PDF export.
* **Repository finalization:** push latest code + thesis; tag a release; include runbook and evaluation appendix.
* **Documentation pass on both ends:** tighten code README/API notes and thesis narrative; add a short “how to reproduce” section.

---

### ⚠️ Challenges

* Maintain **environment parity** (local vs. target) for embeddings/deps without external downloads.
* Final **pseudonymization** sweep in the bibliography while keeping explicit org names in the body.
* Watch **latency variance** on large filtered pools (tracked via logs; no further testing this cycle).

---

### 📈 Technical Milestones (as of 15.08.2025)

* **TM01 – Proof-of-Concept Retrieval Functionality:** 🟢 100%
* **TM02 – End-to-End RAG Pipeline for Validation Rules:** 🟢 100%
* **TM03 – System Performance Improvements (Metrics):** 🟢 100% — targets met; instrumentation in place
* **TM04 – Evaluation with Statistical Significance:** 🟡 \~60% — pilot complete; expansion out of scope this cycle
* **TM05 – Final Demonstration-Ready System:** 🟡 \~80% — docs and release prep underway

---

### 🎓 Academic Milestones

* **AM01 – Background and Related Work:** 🟢 100%
* **AM02 – Methodology/Implementation:** 🟢 100%
* **AM03 – Results and Analysis (Evaluation):** 🟢 100% — chapter drafted with pilot + trade-offs
* **AM04 – Full Thesis Draft for Review:** 🟡 \~70%
* **AM05 – Final Thesis Submission:** ⚪ Not started

---

### Notes

* **Defaults (locked):** Hybrid **(0.80 / 0.10 / 0.10)**, **τ = 0.30**, per-query min–max; no query-time expansion; **no FAISS/external vector DB**.
* **Data residency:** embeddings computed locally (**UAE-Large-V1**) and stored **precomputed** in the DB.
* **UI:** **Dash-only**; explanations grounded in stored fields; percent bars show **normalized** scores only.
