# Modules

Modules are the lowest-level building blocks in AICodeRally.

They are **not apps**, **not portals**, and **not solutions**.
They are granular, reusable business capabilities used by all three tiers.

---

## What Are Modules?

Modules represent discrete business capabilities that can be composed into apps, portals, and solutions.

**Examples:**
- `leads`
- `pipeline-management`
- `donor-management`
- `grant-tracking`
- `projects`
- `brand-assets-library`
- `content-calendar`
- `campaigns-manager`
- `time-tracking`
- `accounting`
- `approval-workflows`

---

## Where Modules Live

**Repository:** `packages/modules/*`

Each folder is one module:
- `packages/modules/donor-management`
- `packages/modules/pipeline-management`
- `packages/modules/brand-assets-library`
- etc.

---

## Module Contract

We use a shared type from `@rally/core`:

```ts
export type RallyModuleMeta = {
  id: string;          // kebab-case, globally unique
  name: string;        // human label
  description: string;
  version: string;     // semver
  domain: string;      // business domain (e.g. "nonprofit", "creative-services")
  category: string;    // function (e.g. "crm", "ops", "finance", "analytics")
  tier?: "studio" | "edge" | "summit" | "shared";
};

export type RallyModule = {
  meta: RallyModuleMeta;
  // Optional: standard entry points, components, actions
};
```

Modules are **tier-agnostic by default**.

The `tier` field is a hint about where they are primarily used today, not a restriction.

---

## How Modules Are Used

Modules are consumed by:

### 1. Ideation Studio
As building blocks inside one-off apps
- Birthday planner uses `events`, `guests`, `tasks`
- Nonprofit landing uses `donor-management`, `impact-analytics`

### 2. Edge Portal
As part of business OS solutions
- `edge-designer-biz-kit` uses `pipeline-management`, `projects`, `accounting`, `hours-tracking`
- `edge-brand-hub` uses `brand-assets-library`, `content-calendar`, `campaigns-manager`

### 3. Summit Solutions
As capabilities inside cross-org, custom systems
- `summit-bhg-spm-suite` uses `spm-assessment-intake`, `plan-diagnostics`, `proposal-builder`
- `summit-enterprise-spm-accelerator` uses `governance-library`, `simulation-engine`

---

## Module Design Principles

### 1. Single Responsibility
Each module should do one thing well.
- ✅ Good: `donor-management` handles donors and giving history
- ❌ Bad: `nonprofit-suite` tries to do donors + grants + volunteers

### 2. Tier-Agnostic
Modules should work across Studio, Edge, and Summit without modification.
- No tier-specific branding in module code
- No hard-coded routing to specific portals
- Use shared types and interfaces

### 3. Composable
Modules should work together naturally.
- `pipeline-management` + `scoping-tool` + `projects` = creative studio workflow
- `donor-management` + `grant-tracking` + `impact-analytics` = nonprofit operations

### 4. No UI Assumptions
Modules can export components, but should not assume how they'll be used.
- Export data hooks and types
- Export optional UI components
- Let portals decide layout and composition

---

## Module Categories

Modules are organized by business function:

### CRM (Customer Relationship Management)
- `leads`
- `customer-success`
- `donor-management`
- `testimonials-reviews`

### Operations
- `pipeline-management`
- `project-tracker`
- `scoping-tool`
- `hours-tracking`
- `content-calendar`

### Finance
- `accounting`
- `invoicing`
- `grant-tracking`
- `budget-management`

### Marketing
- `email-marketing`
- `campaigns-manager`
- `brand-assets-library`
- `social-media`

### Analytics
- `impact-analytics`
- `dashboard-builder`
- `reports-engine`
- `marketing-analytics`

### Workflow
- `approval-workflows`
- `brand-requests`
- `tasks`

### Experience
- `client-portal`
- `asset-library`
- `volunteer-portal`

---

## Creating a New Module

When creating a new module:

### 1. Choose a Clear ID
- Use kebab-case
- Be specific: `brand-assets-library` not `assets`
- Globally unique across all modules

### 2. Define the Contract
```ts
// packages/modules/example-module/index.ts
import type { RallyModule } from "@rally/core";

export const exampleModule: RallyModule = {
  meta: {
    id: "example-module",
    name: "Example Module",
    description: "What this module does",
    version: "1.0.0",
    domain: "marketing", // or "nonprofit", "creative-services", etc.
    category: "ops", // or "crm", "finance", "analytics", etc.
    tier: ["edge"], // optional: primary usage tier
  },
};

// Required export alias for validation
export const module = exampleModule;
```

### 3. Add Types and Logic
```ts
// packages/modules/example-module/types.ts
export type ExampleEntity = {
  id: string;
  name: string;
  // ... fields
};

// packages/modules/example-module/hooks.ts
export function useExampleData() {
  // ... data fetching logic
}
```

### 4. Export Optional UI
```ts
// packages/modules/example-module/components.tsx
export const ExampleList = () => {
  // ... component
};

export const ExampleDetail = () => {
  // ... component
};
```

### 5. Register in Module Index
Add to `packages/modules/index.ts`:
```ts
import { exampleModule } from "./example-module";

export const modules: RallyModule[] = [
  // ... existing modules
  exampleModule,
];
```

---

## Module Governance

### What Belongs in a Module
✅ Business capability definition
✅ Data types and schemas
✅ Reusable hooks and utilities
✅ Optional UI components
✅ API routes (if module-specific)

### What Does NOT Belong in a Module
❌ Tier-specific branding or styling
❌ Portal-specific routing
❌ Hard-coded portal references
❌ Business operations logic (that's for Edge/Summit)
❌ Complete app experiences (that's for Studio)

---

## End-User Visibility

**Important:** End-users never interact with modules directly.

They see:
- **Studio apps** (built on modules)
- **Edge portals** (using modules via solutions)
- **Summit solutions** (orchestrating modules)

Modules are an internal implementation detail that powers the user-facing experiences.

---

## Related Documentation

- **Architecture 3.0:** `/architecture/aicr-architecture-3.0.md`
- **Tech Stack:** `/architecture/tech-stack.md`
- **Solutions:** `/architecture/solutions.md`
