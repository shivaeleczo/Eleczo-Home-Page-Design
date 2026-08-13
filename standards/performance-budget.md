# Performance Budget

**Status: PROVISIONAL.** Targets below are industry-standard defaults. They become binding
once the current baseline (D-10) is known — a budget set without a baseline cannot tell you
whether you are improving or merely not regressing.

## Field targets (75th percentile, real users)

| Metric | Target | Notes |
|---|---|---|
| LCP | ≤ 2.5s | Usually the hero image or first heading. Prioritise its fetch explicitly. |
| INP | ≤ 200ms | Carousels, tabs and filters are the usual offenders |
| CLS | ≤ 0.1 | Reserve space for every late-loading element |
| TTFB | ≤ 800ms | Magento FPC hit rate is the dominant factor |

## Why field over lab

Lab tests on good hardware and fast connections systematically flatter a site. The audience
here includes contractors and site staff on mid-range Android over mobile networks. Test on
representative conditions or the budget is decorative.

## Asset budget (homepage body, provisional)

| Resource | Budget |
|---|---|
| Above-fold images | ≤ 200KB total, AVIF/WebP, correctly sized per breakpoint |
| Total body images | ≤ 600KB |
| Additional JS (beyond theme baseline) | ≤ 50KB gzipped |
| Additional CSS | ≤ 30KB gzipped |
| Webfonts | Reuse existing; no new families without a written trade-off |
| Third-party scripts | Zero new without named owner, justification and measured cost |

## Structural rules

1. **FPC hit rate is a performance requirement.** A single uncacheable block defeats the
   full page cache for the whole homepage. Every module declares its caching approach.
2. Every image and embed carries intrinsic dimensions. No exceptions.
3. Nothing is injected above existing content after first paint.
4. Below-fold media is lazy-loaded; above-fold media never is.
5. Third-party tags are audited quarterly. Tag creep is the normal cause of slow CWV decay,
   and it happens after launch, when nobody is watching.

## Verification
Lab: Lighthouse on throttled mid-range mobile profile.
Field: CrUX / RUM at p75 over a 28-day window.
Both are reported. Lab alone does not satisfy this standard.
