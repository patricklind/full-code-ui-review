---
name: ui-ux-quality
description: Review, redesign or implement user interfaces with strong product design, responsive behavior, accessibility and non-generic visual quality. Use for frontend/UI/UX work, dashboards, forms, tables, components, mobile layouts and design-system consistency.
---

# UI/UX Quality

Invoke as `/ui-ux-quality` for focused interface work.

## Visual rules

- Preserve an existing coherent brand/design system.
- Avoid generic AI/SaaS defaults: purple/indigo gradients by default, glowing borders, excessive glassmorphism, meaningless card grids, fake testimonials, Lorem Ipsum and domain-irrelevant sample data.
- Use realistic data and deliberate information hierarchy.
- Prefer a restrained palette and consistent 4px/8px spacing rhythm.
- Use readable typography; major headings may use tight tracking around -0.02em where appropriate.
- Choose layouts based on tasks rather than fashionable templates.

## Interaction gates

Interactive controls need relevant default, hover, active, focus-visible, disabled, selected, loading and error states. Never remove keyboard focus without an accessible replacement. Use subtle short transitions only when they clarify state and respect reduced-motion preferences.

## Responsive and accessibility gates

Prevent clipping, overlap, accidental horizontal scrolling and unusable tables. Test long strings. Prefer semantic HTML, labels, correct heading hierarchy, keyboard completion, clear focus management, contrast, dialog focus, associated errors, touch targets and zoom support.

## Verification

When browser/runtime access exists, inspect the rendered UI at relevant viewport sizes. Do not claim visual or accessibility validation that was not performed.