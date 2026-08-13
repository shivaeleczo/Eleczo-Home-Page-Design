# SEO Standard — Homepage Body

## Principles

1. The homepage body serves two search realities at once: **navigational and brand** demand
   arriving at the homepage, and **category and specification** demand that the body's
   internal linking must distribute onward. Optimising only for the former wastes the page.
2. Trade vocabulary is preserved exactly. Buyers search "MCCB 630A 4 pole 36kA", not
   "circuit protection solutions". Simplifying the language breaks the match.
3. Crawler-visible content is real content. If the body's value depends on client-rendered
   modules, state explicitly what a crawler receives.

## Requirements

**Structure**
- Single `h1`, describing the site's actual offer, not a slogan.
- Heading hierarchy shared with `standards/accessibility.md` — one structure, two purposes.
- Internal links from the body to priority categories and brands, with descriptive anchor
  text. Not "click here", not bare brand logos with no accessible name.

**Rendering**
- Content required for ranking is present in the server-rendered HTML.
- If DEC-001 resolves to segment-adaptive content, document what crawlers receive and why
  it is consistent treatment rather than cloaking. This is a decision to make deliberately
  and record — not to discover during a ranking drop.

**Structured data**
- Candidates: `Organization`, `WebSite` with `SearchAction`, `BreadcrumbList` if applicable.
- Product-level markup on the homepage only where products are genuinely presented, with
  accurate price and availability. Inaccurate markup is worse than none.

**Content region**
- If a text block exists for SEO purposes, it must be useful to a reader. Keyword-stuffed
  footers of the "India's best online electrical store" variety are a liability, not an asset.
- Superlative and scale claims ("largest", "best", "50k+ products") need a substantiable basis.

**Performance and SEO overlap**
- Core Web Vitals are covered by `performance-budget.md` and are not separately negotiable here.

## Verification
Rendered-HTML check (not just view-source) · heading outline · internal link inventory ·
structured data validation · index coverage after release · no orphaned or unreachable
priority categories.
