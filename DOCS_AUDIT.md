# AICodeRally Docs Website Audit

**Date:** November 28, 2025
**Reference:** `/Users/todd.lebaron/dev/aicoderally-stack/UNIFIED_ARCHITECTURE.md`

## Purpose

Audit the current docs website against the UNIFIED_ARCHITECTURE.md master reference to identify gaps, inconsistencies, and required updates.

## Current Documentation Structure

### Existing Pages (as of Nov 28, 2025)

```
app/
├── page.mdx                                      # Homepage
├── getting-started/
│   ├── page.mdx                                  # Getting Started
│   └── nomenclature.mdx                          # Nomenclature
├── architecture/
│   └── page.mdx                                  # Architecture 3.0 (4-layer app architecture)
├── platform/
│   └── page.mdx                                  # Platform Overview
├── tech-stack/
│   ├── page.mdx                                  # Tech Stack Overview
│   ├── database.mdx                              # Database
│   ├── database-setup.mdx                        # Database Setup
│   ├── database-environment.mdx                  # Database Environment
│   ├── vercel.mdx                                # Vercel
│   └── github.mdx                                # GitHub
├── modules/
│   ├── page.mdx                                  # Modules Overview
│   ├── tracker.mdx                               # Modules Tracker
│   ├── audit.mdx                                 # Module Audit
│   └── enhancement-pattern.mdx                   # Enhancement Pattern
├── deployment/
│   ├── page.mdx                                  # Deployment Overview
│   ├── checklist.mdx                             # Deployment Checklist
│   ├── database-setup.mdx                        # Database Setup
│   ├── vercel-setup.mdx                          # Vercel Setup
│   └── environment-variables/
│       └── page.mdx                              # Environment Variables
├── integration/
│   ├── ai-gateway/
│   │   └── page.mdx                              # AI Gateway Integration
│   └── solutions/
│       └── page.mdx                              # Solutions Integration
├── tools/
│   └── rally-ai/
│       └── page.mdx                              # Rally AI Documentation
├── development/
│   ├── page.mdx                                  # Development Overview
│   ├── contributing.mdx                          # Contributing
│   ├── coding-standards.mdx                      # Coding Standards
│   └── testing.mdx                               # Testing
├── security/
│   ├── page.mdx                                  # Security Overview
│   ├── checklist.mdx                             # Security Checklist
│   └── audit-report.mdx                          # Security Audit Report
├── api-reference/
│   └── page.mdx                                  # API Reference
├── troubleshooting/
│   └── page.mdx                                  # Troubleshooting
└── faq/
    └── page.mdx                                  # FAQ
```

## Comparison with UNIFIED_ARCHITECTURE.md

### ✅ Coverage - What's Well Documented

| UNIFIED_ARCHITECTURE Section | Docs Website Page | Status |
|------------------------------|-------------------|--------|
| Rally AI (Section 3) | `/tools/rally-ai/page.mdx` | ✅ Complete |
| AI Gateway Integration | `/integration/ai-gateway/page.mdx` | ✅ Complete |
| Module System (partial) | `/modules/page.mdx` | ✅ Good coverage |
| DevOps & Environment (partial) | `/deployment/*` | ✅ Good coverage |
| Tech Stack | `/tech-stack/*` | ✅ Complete |

### ⚠️ Partial Coverage - Needs Updates

| UNIFIED_ARCHITECTURE Section | Current Docs | Gap |
|------------------------------|--------------|-----|
| **System Overview (Section 1)** | `/architecture/page.mdx` | Only covers 4-layer app architecture, not complete system ecosystem |
| **Rally Stack (Section 2)** | `/platform/page.mdx` | Missing module contract details, Python/TS bridge, event bus |
| **Module Lifecycle (Section 5)** | `/modules/page.mdx` | Missing end-to-end lifecycle (7 phases) |
| **UX/UI System (Section 6)** | Scattered across pages | No centralized design system documentation |
| **DevOps (Section 7)** | `/deployment/*` | Missing OIDC token refresh protocol, Python hosting options |

### ❌ Missing Sections - Must Create

| UNIFIED_ARCHITECTURE Section | Status | Priority |
|------------------------------|--------|----------|
| **Agent Protocol (Section 4)** | ❌ Missing | HIGH |
| **Franchise Layer (Section 8)** | ❌ Missing | HIGH |
| **Business Model (Section 9)** | ❌ Missing | MEDIUM |
| **Brand & Identity (Section 10)** | ❌ Missing | MEDIUM |
| **Complete System Architecture** | ❌ Missing | HIGH |

## Detailed Gap Analysis

### 1. System Overview - Needs Update

**Current State:**
- `/architecture/page.mdx` covers "Architecture 3.0" (4-layer app architecture: Modules → Studio → Edge → Summit)
- Focuses on application layers, not complete system ecosystem

**What's Missing:**
- Overview of complete AICodeRally ecosystem
- Rally Stack + Rally AI + Agent Protocol + Franchise + Brand system diagram
- How all pieces fit together

**Recommendation:**
- Keep existing `/architecture/page.mdx` (rename to "Application Architecture")
- Create new `/architecture/unified/page.mdx` for complete system architecture
- Update navigation to distinguish "Application Architecture" from "System Architecture"

### 2. Rally Stack - Needs Enhancement

**Current State:**
- `/platform/page.mdx` covers monorepo structure and tech stack at high level

**What's Missing:**
- Module contract (non-negotiable schema)
- Python ↔ TypeScript bridge pattern
- Event bus communication
- Configuration hierarchy
- Folder layout with detailed annotations

**Recommendation:**
- Update `/platform/page.mdx` with module contract details
- Add `/architecture/rally-stack/page.mdx` for deep dive
- Include code examples of module contracts

### 3. Rally AI - ✅ Good Coverage

**Current State:**
- `/tools/rally-ai/page.mdx` is comprehensive (500+ lines from actual Rally AI README)

**What's Great:**
- All commands documented
- AI model roles explained
- Complete workflow examples
- Best practices included

**Minor Enhancement:**
- Add reference to UNIFIED_ARCHITECTURE.md Section 3

### 4. Agent Protocol - ❌ MISSING

**Current State:**
- Not documented on website

**What's Missing:**
- Claude Code vs ChatGPT role separation
- Handoff protocol (5-step process)
- .ai directory structure and purpose
- SYSTEM.md, CURRENT_TASK.md, AGENT_MEMORY.md files
- No side-channel divergence policy

**Recommendation:**
- Create `/development/agent-protocol/page.mdx`
- Include handoff flowchart
- Provide examples of .ai directory files
- Add to main navigation under "Development"

### 5. Module Lifecycle - Needs Enhancement

**Current State:**
- `/modules/page.mdx` covers module overview
- Missing end-to-end lifecycle

**What's Missing:**
- 7 phases: Idea → Create → Register → UI → Logic → Validation → Deploy
- Step-by-step commands for each phase
- File locations and patterns
- Validation with `rally-ai validate`

**Recommendation:**
- Add `/modules/lifecycle/page.mdx`
- Create interactive guide showing each phase
- Include code examples and terminal commands

### 6. UX/UI System - ❌ MISSING

**Current State:**
- No centralized design system documentation
- Scattered UI references across pages

**What's Missing:**
- Design principles (minimalist, high contrast, racing-sloth aesthetic)
- Design tokens (4px spacing system, color palette)
- Component library documentation
- Module page contract (required elements)
- Navigation patterns

**Recommendation:**
- Create `/design-system/page.mdx`
- Include color swatches, spacing examples
- Document component library from `@rally/ui`
- Add to main navigation

### 7. DevOps & Environment - Needs Enhancement

**Current State:**
- `/deployment/*` covers Vercel deployment
- `/deployment/environment-variables/page.mdx` exists

**What's Missing:**
- OIDC token refresh protocol (`vercel env pull` every 12 hours)
- Python hosting options (Fly, Railway, FastAPI dashboard)
- Local development workflow
- Gateway-specific deployment considerations

**Recommendation:**
- Update `/deployment/page.mdx` with OIDC token section
- Add `/deployment/python-hosting/page.mdx` if needed
- Enhance environment variables page with token expiration warnings

### 8. Franchise Layer - ❌ MISSING (HIGH PRIORITY)

**Current State:**
- Not documented on website

**What's Missing:**
- Three tiers: Studio, Edge, Summit
- Pricing: Studio ($50k initial + $2k/month), Edge ($10k + $500/month), Summit (custom)
- Qualification funnel (5 steps)
- Certification process
- Deliverables package
- Onboarding protocol

**Recommendation:**
- Create `/franchise/page.mdx`
- Include tier comparison table
- Document qualification and certification process
- Add to main navigation

### 9. Business Model - ❌ MISSING (MEDIUM PRIORITY)

**Current State:**
- Not documented on website (internal business info)

**What's Missing:**
- Revenue streams (SaaS, franchise fees, marketplace, enterprise)
- Technical view of business model
- Pricing strategy

**Recommendation:**
- Create `/business/page.mdx` (or keep internal-only)
- If public: focus on technical aspects, not sensitive financials
- Consider creating internal-only version in main repo

### 10. Brand & Identity - ❌ MISSING (MEDIUM PRIORITY)

**Current State:**
- Logo appears in header, but no brand documentation

**What's Missing:**
- The Sloth Paradox (slow sloth + fast racing)
- Visual keywords (racing goggles, neon gradients)
- Color system (cyan → magenta gradients, gold accents)
- Brand usage guidelines

**Recommendation:**
- Create `/brand/page.mdx`
- Include color palette with hex values
- Show logo variations
- Document sloth mascot concept

## Navigation Updates Required

### Current Navigation (app/layout.tsx)

```tsx
<nav className="hidden md:flex gap-2">
  <a href="/" className="nav-link">Home</a>
  <a href="/getting-started" className="nav-link">Getting Started</a>
  <a href="/architecture" className="nav-link">Architecture 3.0</a>
  <a href="/tech-stack" className="nav-link">Tech Stack</a>
  <a href="/modules" className="nav-link">Modules</a>
  <a href="/deployment" className="nav-link">Deployment</a>
</nav>
```

### Recommended Navigation

```tsx
<nav className="hidden md:flex gap-2">
  <a href="/" className="nav-link">Home</a>
  <a href="/getting-started" className="nav-link">Getting Started</a>

  {/* Architecture Dropdown */}
  <div className="dropdown">
    <button className="nav-link">Architecture ▾</button>
    <div className="dropdown-menu">
      <a href="/architecture/unified">System Architecture</a>
      <a href="/architecture">Application Layers</a>
      <a href="/architecture/rally-stack">Rally Stack</a>
    </div>
  </div>

  <a href="/tech-stack" className="nav-link">Tech Stack</a>
  <a href="/modules" className="nav-link">Modules</a>

  {/* Development Dropdown */}
  <div className="dropdown">
    <button className="nav-link">Development ▾</button>
    <div className="dropdown-menu">
      <a href="/development">Overview</a>
      <a href="/development/agent-protocol">Agent Protocol</a>
      <a href="/tools/rally-ai">Rally AI</a>
      <a href="/development/contributing">Contributing</a>
    </div>
  </div>

  <a href="/deployment" className="nav-link">Deployment</a>
  <a href="/franchise" className="nav-link">Franchise</a>
</nav>
```

## Priority Action Items

### Phase 1: Critical Updates (High Priority)

1. **Create Unified System Architecture Page**
   - File: `/app/architecture/unified/page.mdx`
   - Content: Complete system overview from UNIFIED_ARCHITECTURE.md Section 1
   - Includes: System diagram, all components, how they fit together

2. **Create Agent Protocol Documentation**
   - File: `/app/development/agent-protocol/page.mdx`
   - Content: From UNIFIED_ARCHITECTURE.md Section 4
   - Includes: Role separation, handoff protocol, .ai directory

3. **Create Franchise Layer Documentation**
   - File: `/app/franchise/page.mdx`
   - Content: From UNIFIED_ARCHITECTURE.md Section 8
   - Includes: Tiers, qualification, certification, pricing

4. **Update Rally Stack Documentation**
   - Update: `/app/platform/page.mdx`
   - Add: Module contract details, Python/TS bridge
   - Create: `/app/architecture/rally-stack/page.mdx` for deep dive

### Phase 2: Important Enhancements (Medium Priority)

5. **Create Design System Documentation**
   - File: `/app/design-system/page.mdx`
   - Content: From UNIFIED_ARCHITECTURE.md Section 6
   - Includes: Design tokens, component library, brand colors

6. **Create Module Lifecycle Guide**
   - File: `/app/modules/lifecycle/page.mdx`
   - Content: From UNIFIED_ARCHITECTURE.md Section 5
   - Includes: 7 phases with commands and examples

7. **Enhance DevOps Documentation**
   - Update: `/app/deployment/page.mdx`
   - Add: OIDC token refresh protocol
   - Add: Python hosting options section

8. **Create Brand & Identity Documentation**
   - File: `/app/brand/page.mdx`
   - Content: From UNIFIED_ARCHITECTURE.md Section 10
   - Includes: Sloth paradox, color system, brand guidelines

### Phase 3: Nice-to-Have (Low Priority)

9. **Business Model Documentation** (consider internal-only)
   - File: `/app/business/page.mdx` or internal doc
   - Content: From UNIFIED_ARCHITECTURE.md Section 9

10. **Update Navigation with Dropdowns**
    - Add architecture dropdown
    - Add development dropdown
    - Improve discoverability

## Cross-Reference Updates Needed

After creating new pages, update the following pages with cross-references:

1. **Homepage** (`/app/page.mdx`)
   - Add link to unified architecture
   - Add link to agent protocol
   - Add link to franchise

2. **Getting Started** (`/app/getting-started/page.mdx`)
   - Reference agent protocol for AI workflow
   - Reference Rally AI tools

3. **Architecture 3.0** (`/app/architecture/page.mdx`)
   - Add "See also: System Architecture" link
   - Clarify this is application layer architecture

4. **Platform** (`/app/platform/page.mdx`)
   - Reference Rally Stack deep dive
   - Reference module lifecycle

5. **Modules** (`/app/modules/page.mdx`)
   - Reference module lifecycle guide
   - Reference module contract in Rally Stack docs

## Documentation Sync Process

Going forward, when UNIFIED_ARCHITECTURE.md is updated:

1. **Run validation**: `node tools/validate-docs.mjs`
2. **Identify changed sections**: Review git diff
3. **Update docs website pages**: Cascade changes to corresponding pages
4. **Update cross-references**: Ensure all related pages are updated
5. **Test locally**: `pnpm dev` in docs repo
6. **Commit and deploy**: Push to master (auto-deploys to Vercel)

## Success Metrics

Documentation will be considered complete when:

- ✅ All 10 sections from UNIFIED_ARCHITECTURE.md have corresponding docs pages
- ✅ No validation warnings from `node tools/validate-docs.mjs`
- ✅ All pages reference UNIFIED_ARCHITECTURE.md as master source
- ✅ Navigation is intuitive and discoverable
- ✅ Cross-references are complete and accurate
- ✅ Code examples are tested and runnable

## Notes

- Keep existing pages that are already good (Rally AI, AI Gateway, Tech Stack)
- Don't duplicate content - reference and link instead
- Maintain consistency with UNIFIED_ARCHITECTURE.md language and terminology
- Use the same visual diagrams (ASCII art) from master doc
- Add "Last Updated" dates to all pages
- Include "See UNIFIED_ARCHITECTURE.md Section X" references

---

**Next Steps:**
1. Review this audit with team
2. Prioritize which sections to tackle first
3. Create new pages in Phase 1
4. Update existing pages with enhancements
5. Test navigation and cross-references
6. Deploy to production

