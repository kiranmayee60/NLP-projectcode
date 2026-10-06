@echo off
echo ======================================================================
echo  Starting Smart College Admission Decision Support System
echo  (LLMs, Hybrid RAG, Rule Expert System & Explainable AI)
echo ======================================================================

echo.
echo Starting FastAPI Backend Engine on http://127.0.0.1:8000 ...
start "FastAPI Backend" cmd /k "cd /d %~dp0backend && python run.py"

timeout /t 3 /nobreak > nul

echo Starting Vite React Frontend on http://localhost:5173 ...
start "React UI Dashboard" cmd /k "cd /d %~dp0frontend && npm run dev"

echo.
echo ======================================================================
echo  System is Launching!
echo  - Frontend URL : http://localhost:5173
echo  - Backend API  : http://127.0.0.1:8000
echo  - Swagger Docs : http://127.0.0.1:8000/docs
echo ======================================================================

