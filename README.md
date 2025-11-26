# AICodeRally Documentation Site

Official documentation for the AICodeRally platform.

## 🚀 What We Built

A documentation site using **Next.js 15 + MDX** with:

- **Technology**: Next.js 15 App Router with native MDX support
- **Styling**: Tailwind CSS with typography plugin
- **Port**: 3005 (local development)
- **Deployment**: Vercel (subdomain: docs.aicoderally.com)
- **Cost**: $0/month (completely free!)

## 📁 Structure

```
apps/docs/
├── app/
│   ├── page.mdx                    # Homepage
│   ├── getting-started/
│   │   └── page.mdx               # Installation guide
│   ├── platform/
│   │   └── page.mdx               # Platform overview
│   ├── deployment/
│   │   └── page.mdx               # Deployment guide
│   ├── layout.tsx                 # Root layout with navigation
│   └── globals.css                # Global styles
├── next.config.mjs                # Next.js + MDX configuration
├── mdx-components.tsx             # MDX components
├── package.json
└── README.md                      # This file
```

## 🛠️ Development

### Start Development Server

```bash
# From root
pnpm --filter docs dev

# Or from apps/docs
cd apps/docs
pnpm dev
```

The site will be available at **http://localhost:3005**

### Add New Documentation

1. Create a new folder in `app/`
2. Add a `page.mdx` file
3. Write your documentation in Markdown/MDX
4. It will automatically be available at the route

Example:
```bash
# Create new guide
mkdir app/guides
echo "# My Guide" > app/guides/page.mdx
# Now available at /guides
```

## 📝 Content Available

- **Homepage** (`/`) - Introduction to AICodeRally
- **Getting Started** (`/getting-started`) - Installation and setup guide
- **Platform Overview** (`/platform`) - Architecture and tech stack
- **Deployment Guide** (`/deployment`) - Vercel deployment instructions

## 🎨 Styling

Uses Tailwind CSS with typography plugin for beautiful markdown rendering:

- Automatic code syntax highlighting
- Responsive design
- Clean typography
- Simple navigation header

## 🚢 Deployment to Vercel

### Option 1: Automatic Deployment

Push to main branch - Vercel will auto-deploy:

```bash
git add .
git commit -m "docs: Add documentation site"
git push
```

### Option 2: Manual Deployment

```bash
# From root
vercel --prod

# Select the docs app when prompted
```

### Configure Subdomain

1. Go to Vercel Dashboard → Your Project → Settings → Domains
2. Add domain: `docs.aicoderally.com`
3. Add CNAME record in your DNS:
   ```
   docs  CNAME  cname.vercel-dns.com
   ```

## 📦 Dependencies

- `next`: ^15.0.0
- `react`: ^19.0.0
- `@next/mdx`: ^15.0.0
- `@mdx-js/loader`: ^3.1.0
- `@mdx-js/react`: ^3.1.0
- `tailwindcss`: ^3.4.0

All dependencies are free and open-source!

## 🔗 Links

- **Local**: http://localhost:3005
- **Production** (once deployed): https://docs.aicoderally.com
- **GitHub**: https://github.com/aicoderally/aicoderally-stack/tree/main/apps/docs

## 💡 Why Not Nextra?

Initially attempted Nextra but encountered compatibility issues with Next.js 15 and the latest version. Switched to **native MDX support** in Next.js 15 which is:

- ✅ Simpler and more reliable
- ✅ Better integrated with Next.js
- ✅ Easier to customize
- ✅ No extra dependencies
- ✅ Full control over styling and layout

## 📋 Todo

- [ ] Add more documentation pages (modules, API reference)
- [ ] Add search functionality
- [ ] Add code syntax highlighting themes
- [ ] Add table of contents for long pages
- [ ] Deploy to docs.aicoderally.com
- [ ] Consolidate existing docs from roadmap/ and .ai/

## 🎯 Next Steps

1. **Add More Content**: Create more documentation pages
2. **Deploy**: Push to Vercel and configure subdomain
3. **Consolidate**: Move existing docs from scattered locations
4. **Auto-Generate**: Add TypeDoc for API documentation

---

Built with ❤️ as part of the AICodeRally monorepo
