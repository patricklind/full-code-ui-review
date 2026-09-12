---
name: ui-ux-quality
description: Review and improve an existing UI or implement UI changes with strong product design, responsive behavior, accessibility and non-generic visual quality. Use for frontend/UI/UX reviews, redesigns, component work, dashboards, forms, tables, mobile layouts and design-system consistency.
---

# UI/UX Quality

## Design principles

- Preserve a coherent existing brand/design system when one exists.
- Avoid generic AI/SaaS defaults: no default purple/indigo gradients, glow-heavy borders, meaningless feature-card grids, excessive glassmorphism, fake testimonials or Lorem Ipsum.
- Use realistic domain-relevant content.
- Prefer a restrained palette, clear hierarchy and consistent 4px/8px spacing rhythm.
- Use deliberate typography; major headings may use tight tracking around -0.02em where appropriate.
- Prefer layouts based on user tasks: list/detail, split view, sidebar, table, contextual panel, asymmetric composition where appropriate.
- Do not sacrifice information density merely to look modern.

## Interactive quality gates

Every interactive control needs appropriate default, hover, active, focus-visible, disabled, selected and loading/error states where applicable.

- Never remove focus outlines without an accessible replacement.
- Use subtle 150–250ms transitions when they clarify state; do not animate everything.
- Respect reduced-motion preferences.
- Prevent duplicate submissions and accidental destructive actions.

## Responsive quality

Work mobile-first when multiple viewport sizes are supported. Prevent clipping, overlap, unusable tables, inaccessible navigation and accidental horizontal scrolling. Test long URLs, emails, filenames, hostnames, IPs, UUIDs and status text.

## UX review

Check navigation, discoverability, feedback, loading, empty/error states, forms, validation, confirmation, state preservation, keyboard completion and recovery paths.

## Accessibility

Prefer semantic HTML. Verify labels, headings, contrast, keyboard navigation, focus management, dialog behavior, error association, touch targets and zoom behavior.

## Verification

If browser/runtime tools are available, inspect actual rendered screens at relevant sizes. Do not claim visual or accessibility verification that was not performed.