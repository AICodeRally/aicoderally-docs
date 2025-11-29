# 📚 Documentation Maintenance Guide

Complete guide for using the Doc agent to keep AICodeRally documentation fresh, accurate, and comprehensive.

---

## Quick Start: Running a Full Audit

### Option 1: Use the Audit Command (Recommended)

```
/doc-audit
```

This runs a comprehensive 10-point audit covering:
- Documentation coverage gaps
- Accuracy of code examples
- Broken links
- Outdated content
- Consistency issues
- Navigation problems
- Missing documentation types
- Recent code changes needing docs
- File organization
- Overall documentation health

### Option 2: Manual Doc Agent Request

```
/doc please run a full documentation audit and housekeeping scan. Check for outdated content, missing documentation, broken links, and code examples that need updating based on recent changes to the main stack.
```

---

## Common Housekeeping Tasks

### 1. Sync Docs with Recent Code Changes

**Check what changed recently:**
```
/doc review the last 7 days of commits in ~/dev/aicoderally-stack and tell me what documentation needs updating
```

**Update docs based on changes:**
```
/doc update all documentation to reflect the recent changes to [feature X]
```

**Example:**
```
/doc check if the AI Gateway documentation needs updating based on recent changes to the aicoderally-stack repository
```

---

### 2. Find and Fix Outdated Code Examples

**Search for examples:**
```
/doc find all code examples in integration guides and verify they still work with the current codebase
```

**Update specific examples:**
```
/doc update the code examples in app/integration/ai-gateway/page.mdx to match the current API
```

**Test examples:**
```
/doc verify all TypeScript code examples compile correctly
```

---

### 3. Check for Missing Documentation

**Scan for gaps:**
```
/doc scan ~/dev/aicoderally-stack and identify features or APIs that don't have documentation yet
```

**Specific checks:**
```
/doc check if we have documentation for all API routes in apps/studio
/doc verify we have integration guides for all major features
/doc find any environment variables that aren't documented
```

---

### 4. Fix Broken Links and References

**Find broken links:**
```
/doc scan all documentation for broken links (internal and external)
```

**Fix specific links:**
```
/doc update all links that reference the old repository structure
/doc verify all GitHub links point to the correct repositories
```

---

### 5. Update Version Numbers and Dates

**Find outdated dates:**
```
/doc find all "Last Updated" dates and update them where content has changed
```

**Update versions:**
```
/doc update all references to package versions to match current package.json
```

---

### 6. Improve Navigation and Cross-References

**Check navigation:**
```
/doc review app/layout.tsx and suggest improvements to the documentation navigation
```

**Add cross-references:**
```
/doc add relevant cross-references between related documentation pages
```

---

### 7. Consistency and Style Cleanup

**Check formatting:**
```
/doc verify all documentation follows our style guide (proper headings, code blocks with languages, consistent frontmatter)
```

**Fix inconsistencies:**
```
/doc ensure all MDX files have proper metadata exports
/doc make sure all code blocks specify their language
```

---

### 8. Security and Best Practices Review

**Check for exposed secrets:**
```
/doc scan all documentation for hardcoded API keys, tokens, or credentials
```

**Verify best practices:**
```
/doc review all code examples to ensure they follow security best practices
```

---

### 9. Create Missing Documentation

**Generate new docs:**
```
/doc create a troubleshooting guide for common deployment issues
/doc write API documentation for the user endpoints in apps/studio
/doc create a migration guide from version X to Y
```

---

### 10. Archive Deprecated Content

**Find deprecated features:**
```
/doc identify documentation for deprecated features that should be archived
```

**Archive content:**
```
/doc move deprecated documentation to an archive folder and update references
```

---

## Scheduled Maintenance Tasks

### Daily (for active development)
- Check recent commits for documentation needs
- Update any docs related to changed code
- Fix reported broken links

**Command:**
```
/doc quick check: review today's commits and update any affected documentation
```

### Weekly
- Run `/doc-audit` for comprehensive scan
- Update code examples
- Check external links
- Review navigation structure

**Command:**
```
/doc-audit
```

### Monthly
- Full documentation coverage review
- Update all "Last Updated" dates
- Review and update getting started guides
- Check for missing features/APIs
- Update screenshots and diagrams

**Command:**
```
/doc comprehensive monthly review: check coverage, update dates, verify all features are documented, and create a report
```

### Quarterly
- Review entire documentation structure
- Reorganize if needed
- Update style guide
- Create new guides for accumulated features
- Archive old content

**Command:**
```
/doc quarterly review: assess documentation structure, suggest reorganization, identify new guides needed, and plan major updates
```

---

## Workflow Examples

### Example 1: After Adding a New Feature

```bash
# 1. Add the feature to main stack
cd ~/dev/aicoderally-stack
git commit -m "feat: Add Stripe payment integration"

# 2. Launch Doc terminal and create documentation
doc
claude

> /doc create integration guide for the new Stripe payment feature in apps/studio

# 3. Add to navigation if it's a major feature
> /doc add Stripe integration to the navigation in app/layout.tsx

# 4. Update related docs
> /doc update the deployment guide to include Stripe environment variables
```

---

### Example 2: Weekly Documentation Maintenance

```bash
doc
claude

> /doc-audit

# Review the audit report, then:

> /doc please fix all the critical issues identified in the audit

> /doc update the outdated code examples found in the audit

> /doc create the missing integration guides identified
```

---

### Example 3: Preparing for a Release

```bash
doc
claude

> /doc verify all documentation is accurate for the upcoming v2.0 release

> /doc update all version numbers from v1.x to v2.0

> /doc create a migration guide from v1.x to v2.0

> /doc check that all new v2.0 features are documented

> /doc generate a changelog based on documentation changes
```

---

### Example 4: Documentation Sprint

```bash
doc
claude

# Day 1: Audit and plan
> /doc-audit
> /doc create a prioritized list of documentation tasks based on the audit

# Day 2: Coverage
> /doc create all missing integration guides identified in the audit

# Day 3: Accuracy
> /doc update all code examples to match current implementation
> /doc verify all API documentation is accurate

# Day 4: Polish
> /doc fix all broken links and references
> /doc ensure all formatting is consistent

# Day 5: Review
> /doc-audit
> /doc compare the new audit with the initial one and summarize improvements
```

---

## Best Practices

### 1. Always Verify Before Publishing
```
/doc verify all code examples actually work before I commit this documentation
```

### 2. Keep Examples Current
```
/doc set up a monthly task to review and test all code examples
```

### 3. Document as You Code
When making code changes:
```
/doc update the [feature] documentation to reflect the changes I just made
```

### 4. Use Specific Requests
Good:
```
/doc update the AI Gateway authentication section with the new OIDC token flow
```

Bad:
```
/doc update the docs
```

### 5. Review Generated Content
Always review what the Doc agent writes:
```
/doc create a deployment guide, then let me review it before committing
```

---

## Doc Agent Capabilities

### What the Doc Agent Can Do

✅ **Search and Find**
- Find undocumented features
- Locate specific documentation
- Identify gaps in coverage

✅ **Create Documentation**
- Integration guides
- API documentation
- Architecture docs
- Troubleshooting guides

✅ **Update Content**
- Refresh code examples
- Update version numbers
- Fix broken links
- Modernize outdated content

✅ **Verify Accuracy**
- Compare docs with code
- Check examples still work
- Validate references

✅ **Organize and Structure**
- Reorganize documentation
- Add navigation links
- Create cross-references
- Improve discoverability

✅ **Audit and Report**
- Generate health reports
- Identify issues
- Prioritize tasks
- Track improvements

### What Requires Human Review

⚠️ **Strategic Decisions**
- Major reorganization
- Changing documentation approach
- Deprecation policies

⚠️ **Business Context**
- Marketing copy
- Pricing information
- Legal disclaimers

⚠️ **Visual Content**
- Screenshots
- Diagrams
- Videos

---

## Measuring Documentation Health

### Key Metrics

**Coverage:** % of features with documentation
```
/doc calculate what percentage of our features have documentation
```

**Freshness:** Average age of documentation
```
/doc find the average age of our documentation and identify the oldest content
```

**Accuracy:** % of code examples that work
```
/doc test all code examples and report success rate
```

**Discoverability:** Can users find what they need?
```
/doc review navigation and search keywords for discoverability
```

### Health Score Interpretation

- **9-10:** Excellent - Minimal maintenance needed
- **7-8:** Good - Minor updates needed
- **5-6:** Fair - Regular maintenance required
- **3-4:** Poor - Significant work needed
- **1-2:** Critical - Major documentation overhaul required

---

## Troubleshooting Common Issues

### Issue: "Documentation is outdated"
```
/doc identify all outdated documentation and create a prioritized update plan
```

### Issue: "Code examples don't work"
```
/doc test all code examples and fix the ones that fail
```

### Issue: "Can't find documentation for feature X"
```
/doc create comprehensive documentation for [feature X] including examples and troubleshooting
```

### Issue: "Documentation is inconsistent"
```
/doc audit all documentation for consistency and create a style guide
```

---

## Advanced Techniques

### 1. Documentation-Driven Development

Before coding:
```
/doc create API documentation for the feature I'm about to build
```

This helps you think through the design before writing code.

### 2. Automated Documentation Testing

Create a test suite:
```
/doc create a script that tests all code examples in documentation
```

### 3. Documentation Metrics Dashboard

Track over time:
```
/doc create a monthly documentation health report template
```

### 4. Cross-Repository Sync

Keep docs in sync:
```
/doc check if documentation in aicoderally-docs matches the implementation in aicoderally-stack
```

---

## Quick Reference Commands

| Task | Command |
|------|---------|
| Full audit | `/doc-audit` |
| Check recent changes | `/doc review commits from last 7 days and identify docs needing updates` |
| Update examples | `/doc update all code examples in [file]` |
| Find gaps | `/doc find features without documentation` |
| Fix links | `/doc find and fix broken links` |
| Create guide | `/doc create integration guide for [feature]` |
| Verify accuracy | `/doc verify [doc file] matches current implementation` |
| Check consistency | `/doc check formatting consistency across all docs` |

---

## Conclusion

Regular documentation maintenance keeps your docs:
- ✅ **Accurate** - Reflects current code
- ✅ **Complete** - Covers all features
- ✅ **Discoverable** - Easy to find
- ✅ **Helpful** - Solves user problems
- ✅ **Current** - Up-to-date with latest changes

**Recommended Schedule:**
- **Daily:** Check recent commits
- **Weekly:** Run `/doc-audit`
- **Monthly:** Comprehensive review
- **Quarterly:** Major cleanup and reorganization

---

**Created:** November 28, 2025
**Last Updated:** November 28, 2025
**Maintained by:** Doc Agent 📚
