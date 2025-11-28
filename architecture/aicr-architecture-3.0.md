# AICodeRally Architecture 3.0

**Last Updated:** 2025-11-28
**Status:** Official Architecture

AICodeRally is structured in four logical layers:

1. **Modules** – capability library (internal only)
2. **Ideation Studio** – one idea → one app
3. **Edge Portal** – business portal around your apps
4. **Summit Solutions** – custom, cross-app, cross-business scale

---

## Architecture Diagram

```txt
                    ┌───────────────────────────────────┐
                    │           Summit Solutions        │
                    │  Custom, cross-app, cross-business│
                    │  governance, analytics, workflows │
                    └───────────────────────────────────┘
                                  ▲
                                  │  builds on
                                  │
                     ┌────────────────────────────────┐
                     │           Edge Portal          │
                     │  Business OS around apps:      │
                     │  CRM, billing, ops, dashboards │
                     └────────────────────────────────┘
                                  ▲
                                  │  wraps
                                  │
          ┌─────────────────────────────────────────────────────┐
          │                 Ideation Studio                     │
          │       One idea → one app (web/site/mobile)         │
          │   Focus on UX, value, and basic data, not ops      │
          └─────────────────────────────────────────────────────┘
                                  ▲
                                  │  uses
                                  │
        ┌─────────────────────────────────────────────────────────┐
        │                        Modules                          │
        │    Shared capability library (internal only):           │
        │    donors, grants, pipeline, projects, brand-assets,    │
        │    campaigns, content-calendar, accounting, etc.        │
        └─────────────────────────────────────────────────────────┘

        ┌─────────────────────────────────────────────────────────┐
        │        Shared Infrastructure & Design System            │
        │  Next.js, TypeScript, Prisma Postgres, Vercel,          │
        │  Tailwind, Inter, Radix UI Icons, @rally/ui components  │
        └─────────────────────────────────────────────────────────┘

        ┌─────────────────────────────────────────────────────────┐
        │ Website & Control Center                                │
        │ apps/website – marketing site & docs                    │
        │ apps/website/app/admin – agents, health, analytics      │
        └─────────────────────────────────────────────────────────┘
```

---

## 1. Modules (Capability Layer)

**Location:** `packages/modules/*`

**Responsibility:**
- Represent reusable business capabilities (donors, grants, pipeline, brand assets, etc.)
- Provide types, logic, and optional shared UI

**Consumers:**
- Studio apps
- Edge solutions
- Summit solutions

**Visibility:**
- Internal only – users never see "modules" in the UI

**Examples:**
- `donor-management`
- `grant-tracking`
- `pipeline-management`
- `brand-assets-library`
- `content-calendar`
- `campaigns-manager`
- `accounting`

---

## 2. Ideation Studio – One Idea → One App

**Tagline:** *One Idea → One App*

**App:** `apps/studio`

**Purpose:**
Take a single idea and turn it into a working app:
- Web app
- Website
- Mobile app (via the mobile project), if needed

**Scope:**
- Focus on one idea at a time:
  - Birthday planner
  - Club tracker
  - Simple CRM
  - Personal dashboard
- Focus on UX, forms, basic logic
- Not responsible for full business operations (billing, pipeline, etc.)

**Philosophy:**
Ideation Studio = "Give your idea shape."

**Output:**
A **single app** built from:
- Modules (your internal bricks)
- UI templates
- Flows
- Basic data structures

**Examples:**
- Birthday event app
- PTA signup app
- Brand lookbook app
- Simple client intake form
- Club roster app
- Mini nonprofit landing

**Tech Governance:**
- Studio apps = templates (blueprints)
- No business logic should live here
- Modules are imported, not implemented
- No multi-idea, multi-portal, or business context here
- Light UI, simple flows, guided creation, zero friction

**Code Location:**
- Studio apps live under `apps/studio/app/apps/*` (not "modules")
- Each folder is one Studio app blueprint

---

## 3. Edge Portal – Business Wrapper Around Apps

**Tagline:** *Run the Business Around Your Ideas*

**App:** `apps/edge`

**Purpose:**
Turn apps and modules into a **business portal**:
- Customers and accounts
- Billing
- Pipeline
- Projects and operations
- Dashboards and automations

**Scope:**
- May host multiple Studio apps for a single business
- Adds the "run the business" layer around those apps

**Philosophy:**
Edge Portal = "Turn your idea into an operation."

**Output:**
A **Business Portal** for the idea or multiple ideas:
- Dashboards
- Workflows
- Modules connected
- Permissions
- Template packs

**Examples of Edge Solutions:**
- `edge-designer-biz-kit` – for creative studios
- `edge-brand-hub` – for brand/marketing teams
- `edge-nonprofit-fundraiser` – for nonprofits
- `edge-restaurant-refresh` – for restaurants
- Internal: `edge-smb-starter` for small businesses

**Edge Portal uses:**
- Modules from `packages/modules/*`
- Edge solutions from `packages/solutions/*` (for vertical bundles)
- Shared UI from `@rally/ui`

**Tech Governance:**
- Edge is the **operational layer**, not the creative layer
- Edge uses modules to form **vertical solutions**
- Studio apps can be incorporated as "channels" or "features"
- Edge should NEVER define modules internally
- Edge should ALWAYS use module interfaces

---

## 4. Summit Solutions – Custom, Cross-App, Cross-Business Scale

**Tagline:** *Custom. Cross-App. Cross-Business. Scale.*

**App:** `apps/summit`

**Purpose:**
Provide custom solutions on top of multiple Edge portals, Studio apps, and modules:
- Cross-org analytics
- Governance
- Complex workflows
- Multi-entity logic
- Systems like SPM or comp governance

**Who it serves:**
- Enterprises
- Multi-location orgs
- Complex nonprofits
- Consulting/AI transformation clients
- Institutions
- Any org needing cross-idea or cross-business orchestration

**Philosophy:**
Summit = "Take everything you built and scale it across your team, org, or industry."

**Output:**
A **Summit Solution**, which may include:
- Bespoke modules (rare, but possible)
- Custom dashboards
- Cross-team workflows
- Multi-tenant data views
- Enterprise-grade governance
- AI agents coordinating across Edge portals
- Complex models, assessments, SPM systems

**Examples of Summit Solutions:**
- `summit-bhg-spm-suite` – SPM consulting platform
- `summit-enterprise-spm-accelerator` – Enterprise SPM governance

**Summit Solutions:**
- Live in `packages/solutions/*` as configuration
- Are implemented in `apps/summit` as views, flows, and orchestration
- Always build on top of:
  - Shared modules
  - Studio apps
  - Edge solutions
- Never re-implement modules directly

**Tech Governance:**
- Summit NEVER builds from scratch
- Summit ALWAYS:
  - Aggregates Studio apps
  - Aggregates Edge portals
  - Orchestrates modules
- Summit introduces:
  - Rules
  - Modeling
  - Automation that spans multiple edges
  - Compliance and governance
  - Executive-level dashboards

---

## 5. Website and Control Center

**Marketing & Docs:** `apps/website`

**Roles:**
- Public-facing site (`aicoderally.com`)
- Tier explanations (Ideation Studio / Edge Portal / Summit Solutions)
- "Build Something Now" demos
- Franchise and brand messaging

**Global Admin:** `apps/website/app/admin/*`
- Agents registry and execution
- Analytics and health
- Snapshots and task monitoring

---

## The Correct Final Flow

### 1. Modules
Internal brick library (never seen by users)

↓

### 2. Ideation Studio
One idea → one app
(web / mobile / website bundle)

↓

### 3. Edge Portal
Business OS around those apps
- Modules
- Vertical solutions

↓

### 4. Summit Solutions
Custom, cross-business, cross-app
Enterprise orchestration and governance

---

## The Superpower of This Structure

This naming + architecture gives you:

- A narrative anyone can understand
- A technically sane, scalable system
- Zero overlap between layers
- A clean value chain you can sell
- Clear boundaries for dev and AI agents
- Reuse of modules at every layer
- A perfect franchise story
- Zero naming confusion across the company
- A way to map "ideas → apps → business → enterprise"

The story is now as powerful as the code base.

---

## Related Documentation

- **Tech Stack:** `/architecture/tech-stack.md`
- **Modules:** `/architecture/modules.md`
- **Design System:** `/.ai/DESIGN_SYSTEM.md`
- **System Instructions:** `/.ai/SYSTEM.md`
