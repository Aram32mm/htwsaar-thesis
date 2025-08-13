### **Name:** Mendez Gomez

### **First Name:** Jose Aram

### **Student ID:** 5020343

**Date:** 31.07.2025
**Reporting Period:** 16.07.2025 – 31.07.2025
**Status:** 🟢 Green – On Track

---

### ✅ Work Completed

* **Chapters — Analysis & Methodology**

  * Finalized **Chapter 3 (Analysis)** and **Chapter 5 (Methodology/Implementation)** with clear tables, diagrams/placeholders, and grounded descriptions of the pipeline.

* **Data Cleaning**

  * Cleaned/Processed Data (normalized data across data sets, data generation, tag generation).
  * Checked that each embedding has **1024 numbers**, normalized them, and noted any bad rows to fix.

* **Embeddings (Local & Precomputed)**

  * Used a **local Hugging Face model (UAE-Large-V1)** to create embeddings (no external calls).
  * **Computed embeddings offline and stored them in the database** for fast, safe search.

* **Keywords for BM25**

  * Generated and saved **BM25 keywords** for each rule from the descriptions and tags.

* **Filters & UI**

  * Added multi-select filters: **Rule Type, Country, Business Type, Party Agent**.
  * Improved result cards with filter badges and grounded explanations (from stored fields).
  * Normalized all scores for consistent percent display in the UI.

* **Pipeline & Code Structure**

  * Moved filtering earlier to speed up searches and unified per-query normalization with the semantic gate.
  * **Improved the overall structure of the code** (clear modules, simpler data flow, consistent utilities).

---

### 🛠 Work Planned (Next Period)

* Expand the **evaluation set** and run baseline comparisons (Keyword / Semantic / Hybrid) with P\@k, MRR, nDCG\@10; log latency P50/P95.
* Draft **Chapter 6 (Evaluation)** with method, pilot results, and trade-offs.
* Add a lightweight **health page** (embedding norms, tag sparsity, EN/DE coverage).

---

### ⚠️ Challenges

* Balancing **latency vs. recall** as candidate pools grow (pre-filtering and caching tuned, needs validation on larger slices).
* Ensuring **consistent tags** (Party Agent, Business Type) across legacy rows; a few outliers remain.

---

### 📈 Technical Milestones (as of 31.07.2025)

* **TM01 – Proof-of-Concept Retrieval Functionality:** 🟢 *Completed (100%)*
* **TM02 – End-to-End RAG Pipeline for Validation Rules:** 🟡 *In Progress (70%)* — hybrid scorer stabilized; filters added; local embeddings in place
* **TM03 – System Performance Improvements (Metrics):** 🟡 *In Progress (25%)* — earlier pre-filtering, unified normalization; latency instrumentation added
* **TM04 – Evaluation with Statistical Significance:** ⚪ *Not started (0%)* — begins with expanded ground truth next period
* **TM05 – Final Demonstration-Ready System:** ⚪ *Not started (0%)*

---

### 🎓 Academic Milestones

* **AM01 – Background and Related Work Chapters:** 🟢 *Completed (100%)*
* **AM02 – Methodology/Implementation Chapter:** 🟢 *Completed (100%)*
* **AM03 – Results and Analysis Chapter:** ⚪ *Not started (0%)* (awaits evaluation runs)
* **AM04 – Full Thesis Draft for Review:** ⚪ *Not started (0%)*
* **AM05 – Final Thesis Submission:** ⚪ *Not started (0%)*

---

### Notes

* Current retrieval defaults: **Hybrid** with weights *(semantic 0.60, BM25 0.35, fuzzy 0.05)* and **semantic gate τ = 0.30**; no query-time expansion; no FAISS/external vector DB.
* UI is **Dash-only**; explanations are grounded in stored fields (no query-time LLM).
