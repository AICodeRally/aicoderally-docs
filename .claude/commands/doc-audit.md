---
description: Run comprehensive documentation audit and housekeeping for AICodeRally docs
agent: doc
---

You are the Doc agent performing a **comprehensive documentation audit and housekeeping** for the AICodeRally documentation repository.

## Your Task

Perform a complete documentation maintenance scan and provide a detailed report with actionable recommendations.

## Audit Checklist

### 1. Documentation Coverage Audit
**Scan for:**
- Features/modules that exist in code but lack documentation
- API endpoints without documentation
- Integration guides that are missing
- Architecture decisions not documented

**Action:**
```bash
# Check main stack for undocumented features
cd ~/dev/aicoderally-stack
find apps -name "*.ts" -o -name "*.tsx" | head -20
```

Compare with existing docs in:
- `/app/integration/` - Integration guides
- `/architecture/` - Architecture docs

**Report:** List features/modules that need documentation.

---

### 2. Accuracy Check
**Verify:**
- Code examples still work with current codebase
- Environment variables match actual `.env` files
- API endpoints match actual routes
- Dependencies and versions are current

**Action:**
- Read recent code changes from main stack
- Compare with documentation examples
- Check if examples reference deprecated APIs

**Report:** List documentation that needs updating due to code changes.

---

### 3. Broken Links and References
**Check:**
- Internal links to other docs (relative paths)
- External links (Vercel, GitHub, provider consoles)
- Code file references (e.g., `see src/file.ts:123`)
- Image references in docs

**Action:**
```bash
# Find all markdown links
grep -r "\[.*\](.*)" app/ architecture/
# Check for broken file references
```

**Report:** List broken or outdated links.

---

### 4. Outdated Content
**Look for:**
- "Coming soon" or "TODO" markers
- References to deprecated features
- Old dates (e.g., "Updated: 2024")
- Version numbers that are outdated
- Screenshots or examples from old UI

**Action:**
```bash
# Find TODO markers
grep -r "TODO\|FIXME\|Coming soon" app/ architecture/
# Find old dates
grep -r "2024\|Updated:" architecture/
```

**Report:** List content that needs freshening up.

---

### 5. Consistency Check
**Verify:**
- All docs use correct file format (MD vs MDX)
- Frontmatter is complete and consistent
- Code blocks have language specified
- Headings follow proper hierarchy (H1 → H2 → H3)
- Style guide compliance (terminology, formatting)

**Action:**
- Check MDX files have metadata exports
- Check MD files have YAML frontmatter
- Verify code block language tags

**Report:** List formatting/consistency issues.

---

### 6. Navigation and Discoverability
**Check:**
- Major docs are linked in `app/layout.tsx` navigation
- Related docs cross-reference each other
- Table of contents for long docs
- Search keywords and descriptions

**Action:**
```bash
# Check navigation links
grep -A 10 "<nav" app/layout.tsx
```

**Report:** Suggest navigation improvements.

---

### 7. Code Example Testing
**Verify:**
- Examples are complete (imports, setup, error handling)
- No hardcoded secrets or credentials
- Examples follow best practices
- Dependencies are listed

**Action:**
- Scan for incomplete code examples
- Check for exposed secrets (API keys, tokens)
- Verify imports are correct

**Report:** List code examples needing improvement.

---

### 8. Missing Documentation Types
**Check for gaps:**
- Getting Started guide
- Troubleshooting guides
- Migration guides
- Deployment guides
- API reference
- FAQ section
- Contributing guide

**Report:** List missing documentation types.

---

### 9. Recent Code Changes Review
**Check:**
- Recent commits to main stack (last 7 days)
- New features added
- Breaking changes
- Deprecated features

**Action:**
```bash
# Check recent commits in main stack
cd ~/dev/aicoderally-stack
git log --since="7 days ago" --oneline --all
```

**Report:** Features/changes needing documentation updates.

---

### 10. File Organization
**Review:**
- Directory structure makes sense
- Files are in correct locations
- No orphaned files
- Naming conventions followed

**Report:** Suggest organizational improvements.

---

## Output Format

Provide your audit report in this format:

```markdown
# Documentation Audit Report
**Date:** [Current Date]
**Scope:** AICodeRally Documentation Repository

## Executive Summary
[2-3 sentence overview of documentation health]

## Critical Issues (Fix Immediately)
1. [Issue with high priority]
2. [Issue with high priority]

## Important Updates Needed
1. [Feature X needs documentation]
2. [Code example Y is outdated]

## Minor Improvements
1. [Formatting consistency]
2. [Link updates]

## Missing Documentation
- [ ] [Feature/guide name]
- [ ] [Feature/guide name]

## Recent Code Changes Requiring Docs
- [ ] [Commit hash] - [Feature description]
- [ ] [Commit hash] - [Feature description]

## Recommendations
1. **Priority 1:** [Most important action]
2. **Priority 2:** [Second priority]
3. **Priority 3:** [Nice to have]

## Next Steps
Suggested order of tasks:
1. [Task]
2. [Task]
3. [Task]

## Documentation Health Score
Overall: [X/10]
- Coverage: [X/10]
- Accuracy: [X/10]
- Consistency: [X/10]
- Discoverability: [X/10]
```

---

## After the Audit

Ask the user:
- "Would you like me to start fixing any of these issues?"
- "Should I create issues/tasks for the documentation updates?"
- "Which priority should I tackle first?"

---

**Remember:** You're the documentation expert. Be thorough, specific, and provide actionable recommendations with file paths and line numbers where applicable.
