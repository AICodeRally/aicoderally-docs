# 📋 Documentation Housekeeping Checklist

Use this checklist for regular documentation maintenance. Copy and paste into a new file for each maintenance session.

---

## Weekly Maintenance Checklist

**Date:** [YYYY-MM-DD]
**Performed by:** [Your name]

### 1. Recent Changes Review
- [ ] Review commits from last 7 days: `cd ~/dev/aicoderally-stack && git log --since="7 days ago" --oneline`
- [ ] Identify features/changes needing documentation updates
- [ ] List affected documentation files:
  - [ ]
  - [ ]
  - [ ]

### 2. Code Examples Spot Check
- [ ] Test 3-5 random code examples from integration guides
- [ ] Note any that don't work:
  - [ ]
  - [ ]

### 3. Link Check
- [ ] Scan for obvious broken links
- [ ] Test external links to Vercel, GitHub, provider sites
- [ ] Broken links found:
  - [ ]
  - [ ]

### 4. Quick Audit
- [ ] Run `/doc-audit`
- [ ] Review critical issues
- [ ] Number of critical issues: ___
- [ ] Number of important updates: ___

### 5. Priority Fixes
- [ ] Fix critical issues identified
- [ ] Update most important outdated content
- [ ] Items completed:
  - [ ]
  - [ ]
  - [ ]

### 6. Notes for Next Week
- Issues to address:
  -
  -
- Documentation to create:
  -
  -

---

## Monthly Maintenance Checklist

**Date:** [YYYY-MM-DD]
**Performed by:** [Your name]

### 1. Comprehensive Audit
- [ ] Run `/doc-audit`
- [ ] Save audit report to: `audits/[YYYY-MM].md`
- [ ] Documentation health score: ___/10

### 2. Coverage Review
- [ ] Check all main features have documentation
- [ ] Verify all API endpoints are documented
- [ ] Review integration guides completeness
- [ ] Missing documentation identified:
  - [ ]
  - [ ]
  - [ ]

### 3. Accuracy Check
- [ ] Compare code examples with current implementation
- [ ] Verify environment variables match `.env` files
- [ ] Check API endpoint documentation matches routes
- [ ] Test major code examples actually work
- [ ] Inaccuracies found:
  - [ ]
  - [ ]

### 4. Update All "Last Updated" Dates
- [ ] Update dates for modified content
- [ ] Files updated:
  - [ ]
  - [ ]
  - [ ]

### 5. Navigation and Structure
- [ ] Review `app/layout.tsx` navigation
- [ ] Check cross-references between docs
- [ ] Verify discoverability of major guides
- [ ] Improvements made:
  - [ ]
  - [ ]

### 6. Create Missing Documentation
- [ ] Write documentation for new features
- [ ] Create missing integration guides
- [ ] Add troubleshooting content
- [ ] New docs created:
  - [ ]
  - [ ]
  - [ ]

### 7. Code Example Testing
- [ ] Test all code examples in integration guides
- [ ] Update outdated examples
- [ ] Add missing error handling
- [ ] Examples fixed/updated:
  - [ ]
  - [ ]

### 8. Consistency Check
- [ ] Verify MDX files have metadata
- [ ] Check code blocks have language tags
- [ ] Review heading hierarchy
- [ ] Ensure consistent terminology
- [ ] Consistency issues fixed: ___

### 9. External Links Verification
- [ ] Test all external links
- [ ] Update dead links
- [ ] Verify GitHub repository links
- [ ] Check Vercel dashboard links
- [ ] Links updated: ___

### 10. Deployment Verification
- [ ] Check docs deployed correctly to https://docs.aicoderally.com
- [ ] Verify all pages load properly
- [ ] Test navigation works
- [ ] Issues found:
  - [ ]
  - [ ]

### 11. Metrics Tracking
- **Coverage:** ___% of features documented
- **Freshness:** Avg age ___ days
- **Accuracy:** ___% examples working
- **Health Score:** ___/10

### 12. Month-End Summary
**Accomplishments:**
-
-
-

**Outstanding Issues:**
-
-
-

**Goals for Next Month:**
-
-
-

---

## Quarterly Maintenance Checklist

**Quarter:** [Q1/Q2/Q3/Q4] [YYYY]
**Performed by:** [Your name]

### 1. Strategic Review
- [ ] Review overall documentation structure
- [ ] Assess if organization still makes sense
- [ ] Identify major gaps
- [ ] Plan structural changes needed

### 2. Major Content Updates
- [ ] Update all getting started guides
- [ ] Refresh architecture documentation
- [ ] Review and update deployment guides
- [ ] Modernize code examples across all docs

### 3. Reorganization (if needed)
- [ ] Move misplaced content
- [ ] Create new sections for new feature areas
- [ ] Archive deprecated content
- [ ] Update all navigation and cross-references

### 4. New Documentation Types
- [ ] Create missing guide types (FAQ, troubleshooting, etc.)
- [ ] Add video tutorials (if applicable)
- [ ] Create interactive examples
- [ ] Develop better onboarding content

### 5. Style Guide Update
- [ ] Review and update documentation standards
- [ ] Create or update `.claude/CLAUDE.md` with new patterns
- [ ] Document new conventions
- [ ] Share with team

### 6. Team Training
- [ ] Review Doc agent usage with team
- [ ] Share best practices
- [ ] Update team documentation workflows
- [ ] Gather feedback on documentation

### 7. Analytics Review (if available)
- [ ] Review which docs are most viewed
- [ ] Identify underutilized content
- [ ] Find common search queries without results
- [ ] Plan content based on user needs

### 8. Comprehensive Testing
- [ ] Test all code examples
- [ ] Verify all commands/scripts work
- [ ] Check all links (internal and external)
- [ ] Test documentation site on different devices

### 9. Archive Old Content
- [ ] Identify truly deprecated content
- [ ] Move to archive directory
- [ ] Add deprecation notices
- [ ] Update redirect rules if needed

### 10. Quarter-End Report
**Documentation Health:** ___/10

**Major Achievements:**
-
-
-

**Content Created:**
- New guides: ___
- Updated guides: ___
- Archived content: ___

**Metrics:**
- Coverage improved: from ___% to ___%
- Average freshness: ___ days
- Broken links fixed: ___
- Code examples updated: ___

**Next Quarter Priorities:**
1.
2.
3.

---

## Ad-Hoc Maintenance Tasks

Use this section for unscheduled maintenance triggered by events.

### After Major Code Change
- [ ] Feature: _______________
- [ ] Affected docs identified
- [ ] Docs updated
- [ ] Examples tested
- [ ] Navigation updated if needed

### After User Feedback
- [ ] Feedback: _______________
- [ ] Doc issue identified
- [ ] Improvement made
- [ ] User notified

### After Bug Fix
- [ ] Bug: _______________
- [ ] Troubleshooting guide updated
- [ ] Common errors section updated
- [ ] Prevention documented

### Before Release
- [ ] Version: _______________
- [ ] All docs verified accurate
- [ ] Migration guide created
- [ ] Changelog updated
- [ ] Version numbers updated
- [ ] Release notes written

---

## Quick Commands Reference

| Task | Command |
|------|---------|
| Full audit | `/doc-audit` |
| Recent changes | `/doc review last 7 days commits for doc needs` |
| Test examples | `/doc test all code examples in [file]` |
| Fix links | `/doc find and fix broken links` |
| Update file | `/doc update [file] to match current code` |
| Create guide | `/doc create [type] guide for [feature]` |

---

## Tips for Effective Maintenance

1. **Be Consistent** - Set a regular schedule (weekly/monthly)
2. **Prioritize** - Fix critical issues first
3. **Test Everything** - Don't assume examples still work
4. **Stay Current** - Review recent commits regularly
5. **Automate** - Use `/doc-audit` instead of manual checks
6. **Document Changes** - Keep notes on what you update
7. **Measure Progress** - Track metrics over time
8. **Ask for Help** - Use `/doc` for complex updates

---

**Template Version:** 1.0
**Created:** November 28, 2025
**Last Updated:** November 28, 2025
