# Magento Implementation Standards

**Blocked on D-12** (version and edition) **and D-13** (theme). Version-specific detail cannot
be finalised until these are answered. Everything below is version-agnostic and binding.

## Upgrade safety

1. **No core file modification. Ever.** Extend via custom modules, plugins, observers,
   preferences and layout XML. A core edit survives until the next upgrade and then fails
   silently in a way nobody remembers the cause of.
2. Custom code lives in its own module under a project vendor namespace.
3. Third-party extensions are evaluated before adoption for: maintenance activity,
   performance cost, upgrade compatibility, and what happens if the vendor disappears.
4. Deprecated APIs are not used. Confirm against the installed version, not from memory.

## Caching — the decisive constraint

Homepage performance on Magento is largely determined by full-page cache behaviour.

- Every module declares, before implementation: **fully cacheable**, **hole-punched**
  (ESI/private content), or **client-fetched**.
- Customer-specific data uses the private-content/sections mechanism or ESI. Never
  `cacheable="false"` on a homepage block — it disables FPC for the entire page.
- Cache invalidation strategy is stated per module: what invalidates it, and how often.
- If DEC-001 resolves to state-adaptive content, the cache-key strategy is designed and
  documented before any code is written, together with what crawlers receive.

## Data and queries

- Collections backing homepage modules are bounded and paginated. No unfiltered loads.
- Queries use indexed columns. The homepage is the highest-traffic page on the site.
- External or slow data (stock, live price, seller availability) is fetched asynchronously
  with a timeout and a defined degraded state. It never blocks paint.

## Content authoring

- Regions the business updates regularly are editable without a developer, at a level
  matching the actual maintainer's skill (D-15).
- Content is not hardcoded in templates where editorial control is required.
- If Page Builder is used, the constraints it imposes on markup and performance are stated
  and accepted — it is a trade of control for autonomy, and the trade should be deliberate.

## Frontend integration

- Theme approach follows DEC-002. Luma and Hyvä have materially different component models,
  JS baselines and performance ceilings; code is not portable between them by assumption.
- Templates carry a header comment naming the requirement IDs they implement.

## Deployment
Static content deployment, cache invalidation and any reindexing are documented per release.
Rollback path stated before deployment, not after an incident.
