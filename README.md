# Intelligent College Admission Decision Support System
### Powered by Large Language Models (LLMs), Hybrid Retrieval-Augmented Generation (RAG), and Explainable AI (XAI)

An end-to-end AI-powered admission advisory and decision platform developed in accordance with the IEEE project specification. The system provides intelligent admission guidance, rule-based statutory eligibility verification, explainable AI recommendations, automated document verification, and administrative trend analytics for both prospective students and college admission officers.

---

## 🌟 Key Features & Architecture

1. **Context-Aware RAG Admission Advisor**:
   - Hybrid Vector Store combining **Dense TF-IDF/Sentence Vector embeddings** and **BM25 keyword search**.
   - Grounded context synthesis with exact **Source Citations** (Document ID, Title, Section, Snippet) and confidence estimation.
   - Built-in Zero-Hallucination local engine, with optional live LLM provider support (Google Gemini / OpenAI / Ollama).
   - Answering complex candidate inquiries such as:
     - *"Can I apply for MCA with a B.Sc. Mathematics degree?"*
     - *"What scholarships are available for economically weaker students?"*

2. **Rule-Based Eligibility Analysis & Expert System Engine**:
   - Multi-criteria validation covering 10+2 marks, UG degree prerequisites, mandatory subject combinations (e.g. Physics & Math for Engineering, Math for MCA), and entrance exam scorecards (JEE Main, GATE, CAT, State CET, NIMCET).
   - Automatic statutory reservation relaxation enforcement (5% marks relaxation for OBC-NCL, SC, ST, PwD; age relaxation; EWS criteria).

3. **Explainable AI (XAI) Module**:
   - **Step-by-step Rule Verification Checklist** with pass/unmet status and rule weights.
   - **Feature Attributions**: Visual impact bars showing positive and negative contributions of academic scores, entrance percentiles, and category relaxations.
   - **Counterfactual Guidance**: Actionable suggestions to bridge cutoff gaps (e.g., *"Improve entrance score by 3.5% to satisfy Tier-1 closing rank"*).

4. **Personalized Course & College Recommender**:
   - Multi-factor cosine similarity matching based on academic credentials, entrance ranks, career interests, and skills.
   - Segregates recommendations into **Dream**, **Target (Optimal)**, and **Safe** options with estimated admission probabilities and placement stats.

5. **Intelligent Document Verification Hub**:
   - Upload validation checking file integrity, MIME formats (PDF, JPG, PNG), and 10MB file size limits.
   - Automated OCR verification simulation detecting institutional seals, roll numbers, name match confidence, and missing document alerts.

6. **Admission Trends & Analytics Dashboard (Officer Console)**:
   - **5-Year Cutoff Trends (2021–2025)** across all degree branches and reservation categories (General, OBC, EWS, SC, ST).
   - Seat matrix occupancy and vacancy breakdown.
   - Statutory quota distribution charts.
   - Exportable CSV dataset and printable report summaries.

7. **AI Career Guidance Explorer**:
   - Industry growth metrics, fresher-to-mid-career salary benchmarks (LPA), required tech stacks, higher education paths (M.Tech/MS/MBA), and recommended global certifications.

---

## 🚀 Quick Start Guide

### Prerequisites
- Python 3.10+ (Installed on system: Python 3.13)
- Node.js 18+ and npm (Installed on system: Node v26, npm 11)

### 1. Launch Everything With One Click
Run the provided batch script:
```cmd
start_servers.bat
```

### 2. Manual Startup

#### Step 1: Run Backend (FastAPI Engine)
```bash
cd backend
pip install -r requirements.txt
python run.py
```
- **Backend API**: `http://127.0.0.1:8000`
- **Interactive Swagger Docs**: `http://127.0.0.1:8000/docs`

#### Step 2: Run Frontend (React + Vite UI)
```bash
cd frontend
npm install
npm run dev
```
- **Frontend Dashboard**: `http://localhost:5173`

---

## 🧪 Running Automated Tests
Run the comprehensive test suite verifying the Eligibility Engine, Explainable AI, Hybrid RAG retriever, Document Verifier, and Analytics:
```bash
pytest backend/tests/test_engines.py -v
```

---

## 📂 Project Structure

```
NLP-projectcode/
├── backend/
│   ├── app/
│   │   ├── config.py                 # App settings & LLM keys
│   │   ├── database.py               # SQLAlchemy ORM session
│   │   ├── main.py                   # FastAPI Application entry point
│   │   ├── data/                     # Admission Knowledge Base datasets
│   │   │   ├── admission_policies.json
│   │   │   ├── colleges_and_programs.json
│   │   │   ├── cutoffs_2021_2025.json
│   │   │   ├── scholarships_and_fees.json
│   │   │   └── career_paths.json
│   │   ├── engines/                  # Core Decision & AI Engines
│   │   │   ├── eligibility_engine.py # Rule-Based Expert System
│   │   │   ├── xai_engine.py         # Explainable AI & Confidence scoring
│   │   │   ├── recommender_engine.py # Program & College matching
│   │   │   ├── doc_verifier.py       # Document verification & OCR
│   │   │   └── analytics_engine.py   # Trend & Cutoff statistics
│   │   ├── models/                   # Database ORM models
│   │   │   ├── applicant.py
│   │   │   ├── application.py
│   │   │   └── knowledge.py
│   │   ├── rag/                      # Hybrid RAG Pipeline
│   │   │   ├── vector_store.py       # Dense Vector + BM25 Hybrid store
│   │   │   ├── document_indexer.py   # Document Chunking & Indexing
│   │   │   └── llm_service.py        # Grounded Context Generator
│   │   ├── routers/                  # REST API Endpoints
│   │   │   ├── auth.py
│   │   │   ├── profile.py
│   │   │   ├── eligibility.py
│   │   │   ├── recommendation.py
│   │   │   ├── rag_advisor.py
│   │   │   ├── document_verify.py
│   │   │   ├── career.py
│   │   │   ├── analytics.py
│   │   │   └── knowledge.py
│   │   └── schemas/                  # Pydantic validation schemas
│   ├── requirements.txt
│   ├── run.py
│   └── tests/
│       └── test_engines.py
├── frontend/
│   ├── src/
│   │   ├── components/               # Navbar, Sidebar, XAI Card, Badges
│   │   ├── pages/                    # React Pages for all modules
│   │   ├── services/                 # API Client
│   │   ├── App.jsx
│   │   └── main.jsx
│   ├── package.json
│   ├── vite.config.js
│   └── tailwind.config.js
├── start_servers.bat
└── README.md
```

