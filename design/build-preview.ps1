# Generates ../index.html (the GitHub Pages preview) from homepage-body.html.
# The fragment is the single source of truth; index.html is derived. Never edit
# index.html by hand — run this instead:
#     powershell -ExecutionPolicy Bypass -File design/build-preview.ps1

$ErrorActionPreference = 'Stop'
$root     = Split-Path -Parent $PSScriptRoot
$fragment = Get-Content "$root\design\homepage-body.html" -Raw -Encoding UTF8
$css      = Get-Content "$root\design\homepage-body.css"  -Raw -Encoding UTF8

$head = @"
<!doctype html>
<html lang="en-IN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Eleczo Homepage Body — Unapproved Prototype</title>
<meta name="description" content="Static prototype of the Eleczo homepage body. Unapproved: the project approval gate is closed and no FRS requirements exist.">
<meta name="robots" content="noindex, nofollow">
<style>
/* Preview chrome only. NOT part of the deliverable — the deliverable is
   design/homepage-body.html + design/homepage-body.css. */
body { margin: 0; font-family: system-ui, -apple-system, "Segoe UI", Roboto, sans-serif; }
.pv-banner { background: #7a1420; color: #fff; padding: .85rem 1.25rem; font-size: .875rem; line-height: 1.5; }
.pv-banner strong { display: block; font-size: .95rem; margin-bottom: .15rem; }
.pv-banner a { color: #ffd9a0; }
.pv-stub { background: #eef1f5; border-block: 1px dashed #9aa4b1; color: #55606e;
           padding: 1rem 1.25rem; font-size: .8125rem; text-align: center; letter-spacing: .04em; }
</style>
<link rel="stylesheet" href="design/homepage-body.css">
</head>
<body>

<div class="pv-banner">
  <strong>Unapproved prototype — not authorised for release</strong>
  Built while <code>docs/03-approval-gate.md</code> is <b>CLOSED</b>. It implements no
  <code>RQ-nnn</code> requirement, because none exist. Composition, modules and copy rest on
  stated assumptions, not evidence &mdash; see
  <a href="https://github.com/shivaeleczo/Eleczo-Home-Page-Design/blob/main/design/README.md">design/README.md</a>.
</div>

<div class="pv-stub">GLOBAL HEADER &mdash; OUT OF SCOPE (charter section 3)</div>

"@

$foot = @"

<div class="pv-stub">GLOBAL FOOTER &mdash; OUT OF SCOPE (charter section 3)</div>

</body>
</html>
"@

# The fragment carries its own stylesheet by reference in the preview, so strip
# nothing; just wrap it.
$out = $head + $fragment + $foot
Set-Content -Path "$root\index.html" -Value $out -Encoding UTF8 -NoNewline

Write-Host "Wrote $root\index.html ($((Get-Item "$root\index.html").Length) bytes)"
Write-Host "CSS size: $([math]::Round($css.Length / 1KB, 1)) KB uncompressed"