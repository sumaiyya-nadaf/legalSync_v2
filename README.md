# legalSync_v2
AI-powered legal case management system with automated document drafting. FastAPI + SQLite backend, vanilla JS frontend, Claude API for AI drafting and a case-aware chatbot.
# LegalSync — AI-Powered Legal Case Management System

LegalSync is a case management and document-drafting platform built for 
solo advocates and small law firms. It replaces scattered registers and 
spreadsheets with a single dashboard for tracking clients, cases, and 
hearing dates — and uses the Claude API to generate first-draft legal 
documents (legal notices, bail applications, affidavits) directly from a 
lawyer's plain-language description of the facts.

## Features
- 🔐 Secure lawyer authentication (JWT + bcrypt password hashing)
- 👥 Client & case management with a dashboard sorted by upcoming hearings
- 🤖 AI document drafting via the Claude API — describe the facts, get a 
  formatted first draft in seconds
- 📧 Email hearing reminders (with a local-log demo mode if SMTP isn't configured)
- 💬 A case-aware chatbot that can answer questions like "what's my next 
  hearing for case X" directly from your own data
- 🎨 A distinctive navy-and-gold interface designed to feel as trustworthy 
  as a lawyer's own letterhead — not a generic SaaS dashboard

## Tech Stack
- **Backend:** Python, FastAPI, SQLAlchemy, SQLite
- **Auth:** JWT (python-jose) + bcrypt (passlib)
- **Frontend:** Vanilla HTML/CSS/JavaScript — no framework
- **AI:** Anthropic Claude API

## Getting Started

### Backend
\`\`\`bash
cd backend
python -m venv venv
.\venv\Scripts\Activate.ps1   # Windows
pip install -r requirements.txt
$env:ANTHROPIC_API_KEY="your-key-here"
uvicorn main:app --reload
\`\`\`

### Frontend
Open \`frontend/index.html\` with VS Code's Live Server extension (or run 
\`python -m http.server 5500\` from the \`frontend\` folder).

## Project Status
Built as a college mini-project. See \`docs/\` for the full PRD, TRD, App 
Flow, UI/UX Design Document, Backend Schema, and Implementation Plan.

## Future Scope
- Integration with eCourts / NCLT / RERA portals
- Voice-to-document dictation
- Native mobile app
