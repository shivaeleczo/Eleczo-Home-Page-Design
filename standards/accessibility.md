# Accessibility Standard

**Target: WCAG 2.2 Level AA.**
Whether this is a legal obligation or a commercial one is OQ-005, pending D-19. Treat it as
binding regardless — the trade audience includes users on older devices, in poor light, on
site, one-handed, and the failure modes overlap heavily with general usability failures.

## Requirements

**Structure**
- One `h1`. Logical heading hierarchy with no skipped levels. Headings describe content,
  not styling.
- Landmark regions used correctly; the body region is navigable by landmark.
- Reading order in the DOM matches visual order. CSS reordering that breaks this fails.

**Keyboard**
- All interactive elements reachable and operable by keyboard, in a sensible order.
- Visible focus indicator meeting contrast requirements. Restyle it if you must; never remove it.
- No keyboard traps, including in carousels and modals.
- Auto-advancing content is pausable.

**Contrast and text**
- 4.5:1 for normal text, 3:1 for large text and meaningful non-text elements.
- Text resizable to 200% without loss of content or function.
- Reflow at 320px width without horizontal scrolling.
- Meaning never conveyed by colour alone — relevant for stock status and price indicators.

**Images and media**
- Meaningful images have alt text describing purpose in context. Decorative images have
  empty alt. Product images name the product, not "image of product".
- Icons conveying meaning have accessible names.

**Forms and controls**
- Persistent, programmatically associated labels. Placeholder text is not a label.
- Errors identified in text, associated with their field, and describing the fix.
- Touch targets at least 24×24px (2.2 AA), with 44×44px recommended for trade users
  operating a phone on site, possibly gloved.

## Testing

Automated scanning catches roughly a third of real issues. It is the entry check, not the audit.

Mandatory manual testing: keyboard-only traversal of every module and state · screen reader
verification of reading order and announcements · 200% zoom · 320px reflow · every specified
state including empty and error.

## Failure handling
A failure against a Must-priority requirement blocks release. A failure elsewhere is logged
with severity, owner and target date — not closed as "minor" by the agent that caused it.
