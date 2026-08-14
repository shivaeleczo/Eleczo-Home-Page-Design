# Homepage Body — Prototype

> ## ⚠ UNAPPROVED
>
> Built on **2026-08-14**, while `docs/03-approval-gate.md` records **Gate status: CLOSED**.
>
> The gate blocks *"UI design, graphic design, final homepage copy, frontend code, Magento
> module or template code, any commitment to a visual direction."* This directory is all of
> those things. It was produced on the explicit instruction of the repository owner, which
> overrides the process — the process is theirs to override — but it does **not** constitute
> a waiver under the gate's own terms. A waiver requires the named approver, in writing, in
> `03-approval-gate.md`, converted to an `AS-nn` with an invalidation trigger. **No approver
> has been named (D-18).**
>
> **This implements no `RQ-nnn` requirement, because none exist.** `docs/02-frs-homepage-body.md`
> §5.1 and §5.2 are empty. Every composition, module and copy decision below is an assumption
> made by the author of this prototype, not a requirement traced to evidence.

---

## What this is

A static, framework-free prototype of the homepage **body** — the region between the global
header and the global footer. Header, navigation, mega-menu and footer are out of scope
(charter §3) and appear in the preview only as grey stubs.

| File | Role |
|---|---|
| `homepage-body.html` | **The deliverable.** Paste into a Magento CMS page/block or Page Builder HTML element |
| `homepage-body.css` | **The deliverable.** Stylesheet — 18 KB uncompressed, 4.5 KB gzipped |
| `build-preview.ps1` | Regenerates `../index.html` from the fragment |
| `../index.html` | **Generated — never edit by hand.** GitHub Pages preview |

Live preview: **https://shivaeleczo.github.io/Eleczo-Home-Page-Design/**

---

## Design decisions, and why

Each of these is a decision the FRS was supposed to make. Recorded here so they can be
challenged rather than inherited silently.

### DEC-001 resolved as Option 1 — fixed body with routing rails

`04-decision-log.md` offers three composition models. **Option 1** is used: a fixed body,
ordered for the trade segment, with explicit routing rails for both audiences.

*Why:* Options 2 and 3 cannot be specified without answers. Option 3 (state-adaptive) needs
D-12 (Magento edition — Adobe Commerce ships customer segments, Open Source does not) and D-14
(caching and personalisation infrastructure). Option 2 (self-selection) needs RS-003, which the
charter requires be checked against evidence rather than assumed either way.

Option 1 is the only one that is fully cacheable, costs nothing to reverse, and does not
commit the project to infrastructure nobody has confirmed exists.

*Reverse this if:* D-6 shows a high logged-in B2B homepage entry share, which would falsify
AS-002 and make state-adaptation worth its cost.

### No hero carousel

OQ-002 asks whether a carousel is justified or merely inherited convention, and charter §5.2
makes conventional patterns candidates rather than defaults. RS-005 is queued and unanswered.
A static, search-first hero also removes the usual LCP and CLS liability.

### No prices shown

OQ-001 is unresolved: B2B/B2C price divergence and Indian MRP/GST display norms (D-19) both
bear on it. Displaying prices would also convert cacheable blocks into hole-punched ones. Trade
pricing is routed to quotation instead — which the stakeholder document supports, since it lists
RFQ, bulk purchase and enquiry as candidate conversions alongside purchase.

### Search placed first

RS-001 found that listings carry dense specification data (pole count, kA breaking capacity,
trip unit type, current rating), which is consistent with specification-driven rather than
browse-driven demand. Search accepts part numbers directly. **This is evidence level 5 —
inference from catalogue structure, not from behaviour.** D-8 could overturn it.

### Modules included

Search / part-number entry · segment routing · category orientation · brand access · bulk
enquiry and RFQ · trust signals · guidance · SEO content region.

**Excluded:** hero carousel (OQ-002), reorder/account-state module (needs D-14 and
hole-punching), stock and lead-time signalling (OQ-003 — expensive to render accurately across
600+ sellers and hostile to full-page caching), testimonial row and newsletter block (charter
§5.2, no evidence offered).

---

## Standards compliance

Written against the binding standards in `standards/`. Verified where verification is possible
without the live site.

### Accessibility — WCAG 2.2 AA

- Single `h1`; heading hierarchy with no skipped levels
- `<section>` landmarks, each labelled via `aria-labelledby`
- DOM order matches visual order at every breakpoint
- Focus indicator restyled, never removed; a white halo is added on dark surfaces where amber
  alone would fall below 3:1
- Touch targets 44×44px — above the 24px AA minimum, because the trade audience operates a
  phone on site, sometimes gloved
- Persistent, programmatically associated form label; the placeholder is *not* the label
- Icons are `aria-hidden` with adjacent text; no meaning is carried by an icon alone
- No meaning conveyed by colour alone
- Reflows at 320px with no horizontal scroll
- `prefers-reduced-motion` and `prefers-contrast` honoured

**Contrast, measured:** body text 14.8:1 · muted text 6.0:1 · white on primary blue ~10:1 ·
success green 5.3:1 · warning amber-dark 6.1:1. All pass AA.

**Not done:** screen-reader verification, keyboard traversal on real devices, 200% zoom
testing. `standards/accessibility.md` requires these manually — automated checking catches
roughly a third of real issues.

### Performance

- **Zero external requests.** No webfonts (system font stack), no CDN, no third-party scripts
- **Zero JavaScript.** Nothing to block INP
- No images at all — icons are inline SVG, so there is no above-fold image weight and no
  intrinsic-dimension risk. Real photography, if added later, must carry `width`/`height`
- Additional CSS 4.5 KB gzipped against a 30 KB budget

**Caveat:** the performance budget is marked PROVISIONAL and becomes binding only once D-10
establishes a baseline. RS-007 (CrUX field data) would supply it without needing site access.

### SEO

- Single `h1` describing the actual offer, not a slogan
- Trade vocabulary preserved exactly — "MCCB 630A 4P 36kA", not "circuit protection solutions"
- Descriptive anchor text throughout; no "click here", no bare brand logos
- All content server-rendered; nothing depends on client rendering
- `Organization` and `WebSite`+`SearchAction` structured data
- **No `Product` markup** — no products are presented on this page, and inaccurate markup is
  worse than none
- The SEO content region is written to be read, not stuffed

### Magento

- No core modification; this is CMS content plus a stylesheet
- All selectors namespaced `.ecz-` to avoid collision with Luma, Hyvä, Page Builder and
  third-party extensions
- **Every module is fully cacheable.** No block requires `cacheable="false"`, which would
  disable FPC for the entire homepage
- No collections, no queries, no dynamic data

---

## Installing in Magento

### Fastest route — CMS block

1. **Admin → Content → Blocks → Add New Block**
2. Title `Homepage Body`, identifier `homepage_body`
3. Switch the editor to **HTML / source mode** — this matters, the WYSIWYG will mangle the SVG
4. Paste the contents of `homepage-body.html`
5. Save, then reference it from the homepage CMS page:
   `{{block class="Magento\\Cms\\Block\\Block" block_id="homepage_body"}}`

### Stylesheet

Add `homepage-body.css` to your theme rather than pasting it into the block:

```
app/design/frontend/<Vendor>/<theme>/web/css/homepage-body.css
```

Reference it from `app/design/frontend/<Vendor>/<theme>/Magento_Theme/layout/cms_index_index.xml`:

```xml
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xsi:noNamespaceSchemaLocation="urn:magento:framework:View/Layout/etc/page_configuration.xsd">
    <head>
        <css src="css/homepage-body.css"/>
    </head>
</page>
```

Then `bin/magento setup:static-content:deploy` and flush the cache.

### Making URLs Magento-native

The fragment uses plain relative paths so it runs unmodified. To route through Magento's URL
resolver, swap:

```
href="/switchgear.html"   →   href="{{store url='switchgear.html'}}"
```

### Theme portability — read this before adapting

`standards/magento-standards.md` is explicit: *"Luma and Hyvä have materially different
component models, JS baselines and performance ceilings; code is not portable between them by
assumption."*

This prototype is deliberately framework-neutral — plain HTML and plain CSS, no Knockout, no
Alpine, no Tailwind, no JavaScript at all — so it will render in either. But **D-13 is
unanswered**, so it has not been adapted to the component conventions of whichever theme you
actually run. Under Hyvä you would normally reimplement this with Tailwind utilities rather
than ship a separate stylesheet.

### Page Builder

If Page Builder authors homepage content, paste the fragment into a single **HTML Code**
element. Do not attempt to rebuild it out of Page Builder rows and columns — the markup
Page Builder emits will not preserve the landmark structure or the heading hierarchy that
the accessibility and SEO standards require.

---

## Before this goes anywhere near production

- [ ] Substantiate or remove every `[UNVERIFIED]` figure — 50,000+ products, 40+ brands,
      600+ certified sellers (AS-005). `standards/seo-technical.md` forbids unsubstantiated
      scale claims
- [ ] Verify every trust claim: authorised sourcing, GST invoicing, pan-India delivery,
      technical support
- [ ] Replace the placeholder logo URL in the JSON-LD
- [ ] Confirm every category and brand URL against the real catalogue — **all are invented**
- [ ] Confirm the search action path matches the installed Magento search route
- [ ] Replace the invented guide articles, or remove the section
- [ ] Manual accessibility testing: keyboard, screen reader, 200% zoom, 320px reflow
- [ ] Lighthouse on a throttled mid-range mobile profile, and CrUX at p75 over 28 days
- [ ] Adapt to the actual theme once D-13 is answered

---

## What this does not do

It does not replace the FRS. It is one plausible interpretation of an unwritten specification,
produced quickly, and its main value is as something concrete to react to — a prompt for
stakeholders who find it easier to criticise a page than to answer an abstract question.

If it is treated as a specification rather than a provocation, it will have done harm, because
every decision in it is an assumption wearing a requirement's clothing — which is the exact
failure `docs/02-frs-homepage-body.md` warns against on line 7.

**The eight blocking discovery items remain open.** See `docs/08-discovery-status-report.md`.