# Tech Stack

AICodeRally is a monorepo-based platform built to turn ideas into apps, apps into businesses, and businesses into scalable solutions.

---

## Core Runtime

**Framework:** Next.js (App Router)
- All portals (Ideation Studio, Edge Portal, Summit Solutions) run on Next.js
- Shared routing patterns and conventions
- Server components + client components pattern

**Language:** TypeScript (full-stack)
- Type safety across frontend and backend
- Shared types between layers
- Strong contracts for modules and solutions

**Database:** Prisma + Postgres (managed)
- Single schema across all tiers
- Type-safe database access
- Migrations and versioning

**Hosting:** Vercel (multi-app deployment)
- Separate deployments for Studio, Edge, Summit, Website
- Edge functions for API routes
- Automatic preview deployments

---

## Shared Layers

### Modules (Capability Library)

**Location:** `packages/modules/*`

**Description:** Small, reusable business capabilities:
- `donor-management`
- `grant-tracking`
- `pipeline-management`
- `brand-assets-library`
- `content-calendar`
- `campaigns-manager`
- etc.

**Purpose:**
- Define the "things the system can do"
- Provide consistent types, logic, and optional shared UI

**Visibility:**
- Modules are internal; end-users never see "modules" in the UI
- They interact with apps, portals, and solutions built on modules

---

### Solutions

**Edge Solutions:** `packages/solutions/*` (edge-prefixed)
**Summit Solutions:** `packages/solutions/*` (summit-prefixed)

**Structure:**
`RallySolution` objects describing:
- Metadata (id, label, domain, ICP)
- `moduleIds` (which modules they depend on)
- Workflows (how modules work together)
- Configuration (module-specific settings)

**Purpose:**
- Configuration-only bundles
- No business logic or UI – portals consume them

**Examples:**
- `edge-designer-biz-kit` – creative studio operations
- `edge-brand-hub` – brand/marketing management
- `summit-bhg-spm-suite` – SPM consulting platform

---

### Connectors

**Location:** `packages/connectors/*`

**Responsibilities:**
- Prisma client (`prisma.ts`)
- Supabase or other external service connectors
- Database access layer

**Rule:**
- Apps and modules go through connectors
- No raw clients in portals
- Centralized configuration

---

### Shared UI

**Location:** `packages/ui/*` (`@rally/ui`)

**Contents:**
- Tier-aware components: buttons, cards, section headers, capability tiles
- Shared layouts and patterns
- Design system primitives

**Design System:**
- **Styling:** Tailwind CSS
- **Typography:** Inter font (variable)
- **Icons:** Radix UI Icons only
- **Tier Styles:**
  - Ideation Studio: cyan/teal/emerald, rounded-xl
  - Edge Portal: orange/rose/pink, rounded-lg
  - Summit Solutions: violet/fuchsia/amber, rounded-md

**Principles:**
- Components are presentational only
- No business logic in UI components
- Tier-aware styling via props

---

## Application Layer

### Ideation Studio (`apps/studio`)

**Purpose:** One idea → one app

**Tech:**
- Next.js App Router
- Studio apps under `app/apps/*` (not "modules")
- Consumes modules from `packages/modules/*`
- Tier styling: cyan/teal, rounded-xl

**Philosophy:**
- Light, guided creation
- Single-idea focus
- Zero friction for creators

---

### Edge Portal (`apps/edge`)

**Purpose:** Business OS around apps

**Tech:**
- Next.js App Router
- Uses Edge solutions from `packages/solutions/*`
- Consumes modules via solution bundles
- Tier styling: orange/rose, rounded-lg

**Philosophy:**
- Operational layer
- Multi-app capable
- Business management (CRM, billing, pipeline, projects)

---

### Summit Solutions (`apps/summit`)

**Purpose:** Custom, cross-app, cross-business scale

**Tech:**
- Next.js App Router
- Uses Summit solutions from `packages/solutions/*`
- Orchestrates modules, Studio apps, Edge portals
- Tier styling: violet/fuchsia, rounded-md

**Philosophy:**
- Enterprise governance
- Cross-org analytics
- Complex workflows
- System of systems

---

### Website (`apps/website`)

**Purpose:** Marketing, docs, admin

**Tech:**
- Next.js App Router
- Public site at `aicoderally.com`
- Admin dashboard at `/admin`
- Marketing pages for Studio/Edge/Summit

**Sections:**
- Homepage and tier explanations
- Docs and guides
- Franchise information
- Admin (agents, health, analytics)

---

## Development Tools

### Monorepo Management
- **Turborepo:** Build caching and task orchestration
- **pnpm workspaces:** Package management
- **TypeScript project references:** Type checking across packages

### Code Quality
- **ESLint:** Linting and code standards
- **Prettier:** Code formatting
- **Husky + lint-staged:** Pre-commit hooks
- **Custom validators:** Module and solution validation scripts

### Testing
- **Jest:** Unit testing
- **React Testing Library:** Component testing
- **Playwright:** E2E testing (when needed)

---

## Data Layer

### Database Schema
- **Prisma schema:** `packages/connectors/prisma/schema.prisma`
- **Migrations:** Version-controlled schema changes
- **Seed data:** Development and demo data

### Data Patterns
- **Module-owned tables:** Modules define their data structures
- **Shared tables:** Cross-cutting concerns (users, orgs, auth)
- **Tenant isolation:** Where needed for multi-tenant scenarios

---

## Deployment

### Vercel Projects
1. **Ideation Studio:** `apps/studio` → studio.aicoderally.com
2. **Edge Portal:** `apps/edge` → edge.aicoderally.com
3. **Summit Solutions:** `apps/summit` → summit.aicoderally.com (when ready)
4. **Website:** `apps/website` → aicoderally.com

### Environment Variables
- **Database:** `DATABASE_URL`
- **Auth:** Supabase keys
- **AI Gateway:** `VERCEL_OIDC_TOKEN`
- **Provider Keys:** `ANTHROPIC_API_KEY`, `OPENAI_API_KEY`, `GOOGLE_API_KEY`

### Build Process
1. Turborepo builds all packages
2. Type checking across workspace
3. Validation scripts run
4. Vercel deploys specific app
5. Edge functions deployed automatically

---

## Third-Party Services

### Authentication
- Supabase Auth
- Role-based access control
- Tier-specific permissions

### AI Services
- **Vercel AI Gateway:** Unified AI endpoint (BYOK)
- **Anthropic:** Claude models
- **OpenAI:** GPT models
- **Google:** Gemini models

### Storage
- Vercel Blob (file uploads)
- Supabase Storage (alternative)

### Email
- Resend or SendGrid (transactional)
- Marketing automation (future)

---

## Architecture Principles

### 1. Layered Separation
- Modules → Ideation Studio → Edge Portal → Summit Solutions
- Each layer builds on lower layers
- No circular dependencies

### 2. Configuration Over Code
- Solutions are configuration bundles
- Modules provide capabilities
- Portals orchestrate

### 3. Type Safety Everywhere
- Shared types from `@rally/core`
- Runtime validation where needed
- Contract enforcement via TypeScript

### 4. Zero Duplication
- Write once in modules
- Reuse across all tiers
- Compose via solutions

### 5. Tier-Aware UX
- Consistent design system
- Tier-specific styling
- Progressive complexity (Studio → Edge → Summit)

---

## Performance

### Build Optimization
- Turborepo caching
- Incremental builds
- Parallel task execution

### Runtime Optimization
- Next.js App Router optimizations
- Server components for data fetching
- Client components only where interactive
- Edge functions for API routes

### Database Optimization
- Prisma query optimization
- Connection pooling
- Indexes on common queries

---

## Security

### Application Security
- Server-side validation
- Type-safe database queries
- Role-based access control
- Environment variable protection

### API Security
- Authentication required
- Rate limiting (via Vercel)
- Input validation
- Output sanitization

### Data Security
- Encrypted at rest (Vercel Postgres)
- Encrypted in transit (HTTPS)
- Audit logging (where needed)
- GDPR-compliant (when applicable)

---

## Related Documentation

- **Architecture 3.0:** `/architecture/aicr-architecture-3.0.md`
- **Modules:** `/architecture/modules.md`
- **Design System:** `/.ai/DESIGN_SYSTEM.md`
- **Getting Started:** `/getting-started.md`
