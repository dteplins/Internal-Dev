# AlphaCIS Design System

Brand and style reference for everything AlphaCIS makes, plus the deck system and the range of client and project styles Dima has built. Version 2, October 13, 2026.

## Contents

1. Brand book
2. Decks
3. Client and project range
4. Tokens
5. Component guidelines
6. CSS variables

## 1. Brand book

AlphaCIS is a managed IT company first and an AI and workflow automation partner second. Everything it makes should look like a calm, competent technology partner: navy and blue on clean white, tight confident headlines, plain words, real numbers. Build every AlphaCIS page, deck, tool and document from these tokens. For slides, follow the Decks section. Client work (a client's website, deck or app) uses that client's palette and logo but keeps the same structure and voice; the Client and project range section shows how, with every past client's palette.

### Voice

- **Plain, direct, second person.** Talk to the owner. "Show us your process. We'll architect the automation. The plan is yours."
- **Specific over adjectives.** Name the step, the hour, the dollar. "Seven steps to get a quote request ready. Six of them are somebody's afternoon."
- **Short declaratives, often in threes.** "Show us. We architect. You decide."
- **Mildly contrarian, never hype.** "Most MSPs keep the lights on. We make your team faster." No "revolutionize", "unlock", "seamless", "cutting-edge".
- **Honest about fit.** It is fine to say an automation is not worth building. "Build it with us, or don't."
- **Section heads say what to do or what it is.** "Build first", "Work queues", "Say this", "Clients needing owners".
- **CTAs are verbs, sentence case, with an arrow on the main one.** "Book an Architecture Session →", "Take the two-minute audit first", "Sort this process".
- **Never use em dashes.** Use a period, comma or colon. No emoji. No exclamation marks in product copy.
- **Internal tools are terse and personal.** "Today", "Waiting", "Also on you", "Mark it posted".

### Color

- Set pages on `ground` (marketing, documents) or `ground-2` (tools, dashboards, alternate bands). Cards sit on `card` with a 1px `line` border.
- Text is `ink`; ledes and secondary copy `ink-2`; metadata `muted`. On `deep` bands use `on-dark` and `on-dark-muted`.
- `brand-navy` is the logo navy and the identity color: eyebrows, active tabs, totals, the 3px top bar on the one highlighted card. `action` is the only clickable blue: primary buttons, links, focus. Keep the two separate so a reader always knows what is clickable.
- `brand-gray` comes from the logo's slash and lockup text. Use it sparingly for wordmark-adjacent text, never as a UI fill.
- Status is a triad, each a strong text color on its soft tint, always with a word: `critical` on `critical-soft` (manual, gap, at risk), `watch` on `watch-soft` (pending, caution), `steady` on `steady-soft` (done, automated, healthy).
- Service tiers have fixed colors: Elite Care `plan-elite`, Complete Care `plan-complete`, Essential `plan-essential`. Use the `-soft` and `-ink` pairs for pills.
- One dark band per page at most for emphasis (verdict panel, closing CTA): `deep`, optionally to `deep-2`.
- Do not use purple, orange or gradients of blue into purple. Do not introduce a second accent hue.

### Type

- Headlines, eyebrows, buttons and labels in `display` (Archivo); body in `body` (Calibri, falling back to Carlito). Load Archivo 500 to 800, Carlito 400 and 700, and JetBrains Mono 500 and 600 from Google Fonts.
- Every section opens the same way: an uppercase `eyebrow` in `brand-navy`, a tight headline (`title` on marketing pages, `heading` in tools), then a `lede` in `ink-2` capped at `measure`. Set headlines with `text-wrap: balance`.
- Use `display` for the single hero headline only.
- All numbers use tabular figures; big readouts in `numeral`, IDs and table figures in `data`.
- Marketing body is `body` at 17px. Tools drop to `body-tool` at 15px.

### Space and layout

- Marketing pages: `wrap-marketing` (1120px) with a `space-5` gutter (`space-4` on phones), sections `space-9` apart (`space-8` on phones). Hero is a two-column split, text left, a working visual right, `space-7` gap.
- Tools: `wrap-tool` (1320px), dense. A sticky header, tabs or a rail, a stat strip, then lists or tables. Single-purpose tools use `wrap-narrow`.
- Grids use `repeat(auto-fit, minmax(…, 1fr))` and collapse to one column on phones. No horizontal scroll at any width.

### Shape and depth

- Cards `radius-lg`, controls `radius-sm`, readouts and icon tiles `radius-md`, chips and toggles `radius-full`. Editorial tools may go square with `radius-xs` throughout; do not mix the two on one page.
- Structure comes from 1px `line` hairlines and `card-2` tints. Shadows are `shadow-sm` at rest and `shadow-lg` on hover with a 4px lift. No hard drop shadows.
- A colored rule marks emphasis: a 3px `brand-navy` top bar on a highlighted card, a 3px left rule on a callout in its status color.

### Components

- **Button.** `primary` (`action` fill, `on-action` label, arrow slides 3px on hover) once per view. `quiet` (transparent, `line` border) for the rest. `on-dark` (white fill, `brand-navy` label) inside `deep` bands.
- **Section head.** Eyebrow, headline, lede. Used at the top of every section.
- **Card.** `card` fill, `line` border, `radius-lg`, `space-5` padding. `highlight` adds the navy top bar.
- **Status pill.** Dot plus word, on the status soft tint.
- **Plan pill.** Tier name on the tier tint.
- **Stat.** Uppercase `label`, a `numeral` value, a `caption` note.
- **Steps.** Numbered steps written "1 · SHOW US", "2 · WE ARCHITECT", "3 · YOU DECIDE".
- **Callout.** Status-colored left rule on the soft tint, for a warning or a confirmed default.
- **FAQ.** `<details>` rows with a "+" that rotates to "×".
- **Sticky CTA.** A bottom bar in `deep` at 96% opacity with the primary button, shown after the hero scrolls away on marketing pages.

### Iconography and imagery

- Icons are hand-drawn inline SVG line icons: 24px grid, 1.7 to 2px stroke, round caps and joins, colored with `currentColor`. No icon library, no emoji.
- Prefer showing the work: real screen recordings, flow diagrams of the client's actual process, dashboards with real-shaped data. Photos are allowed on the website (real offices, real equipment), never stock people pointing at screens.
- Diagrams: boxes in `card` with `line` borders, links as 1.5px `muted` lines, the automated path in `action`, manual steps tagged `critical`.

### Logos

- Use the files in Logos as they are: `acis-mark.png` for headers and favicons, `alphacis-lockup.jpg` (mark, ALPHA CIS and YOUR TECHNOLOGY PARTNER) where there is room. Never redraw or recolor the mark. On `deep` bands, set the name in `display` white instead.

### Motion

- Quick and purposeful: 150 to 200ms for hovers, 400 to 700ms `cubic-bezier(.2,.7,.2,1)` for scroll reveals. Allowed flourishes on marketing pages: a word-by-word hero reveal, a moving dot along a flow diagram, a dot-grid hero background. Tools stay still.
- Always honor `prefers-reduced-motion` and drop all of it.

### Forms and lead capture

- Lead forms and booking embeds come from SalesHubHQ. Wrap them in a `card` with an eyebrow and one-line promise above. Inputs are 48px tall, `radius-sm`, `line-strong` border, `focus-ring` on focus, and every field has a visible label.

## 2. Decks

Every deck, for AlphaCIS or for a client, is built on the same grammar. Only the palette changes. The AlphaCIS_ENG_Partnership deck for Energy Network Group is the reference build.

### The AlphaCIS deck palette

Decks run on Calibri (Calibri Light for the theme heading font) at 16:9 (13.33 x 7.5 in). Colors from the ENG Partnership deck:

| Role | Hex | Token | Use |
| --- | --- | --- | --- |
| Navy | #0F446B | `deep-2` | Cover and closing backgrounds, slide titles, the filled highlight card, the price tile |
| Sky | #1AAFFF | `deck-sky` | Eyebrows on navy, icons, process arrows, the short rule under the cover title. Fills and marks only, never body text on white |
| Slate | #5F6B75 | `deck-slate` | Body copy and ledes on white |
| Ink | #333333 | | Card titles where navy would be too heavy |
| Line | #D6DDE4 | | Card borders and the thin rule at the top of each content slide |
| Tint | #E8F1F8 / #DCE6EF | `accent-soft` | Takeaway bands, highlighted rows |
| Paper | #F5F7FA | `ground-2` | Slide background behind white cards |
| Good / Bad | #1E8E5A / #C0392B | `steady` / `critical` | The "with us / without us" comparison borders and icons only |

Older AlphaCIS decks (SuperChicks, Max AI help desk) used navy #1E3A5F, bright blue #2196F3 and sky #0EA5E9 on #F2F2F2. Build new decks on the ENG palette above.

### Slide grammar

- **Cover.** Full-bleed navy. The ACIS lockup, a spaced uppercase "PREPARED FOR [CLIENT]" eyebrow in sky, one headline that states the promise ("One tech team behind every ENG customer"), a short sky rule, one supporting line, and a footer with the tagline and alphacis.com.
- **Content slide.** A 4px navy rule across the top edge, the ACIS mark top right, then:
  1. an eyebrow: tiny uppercase, widely letter-spaced, in sky or the client accent ("THE SITUATION TODAY", "HOW IT WORKS WITH US")
  2. a sentence-case headline that is the takeaway, not a topic ("When something breaks, the customer calls whoever they know")
  3. one lede line in slate
  4. the body: a grid of 3 to 5 cards
  5. optionally, a full-width takeaway band at the bottom in tint with one bolded sentence ("Nobody at ENG needs to be the IT person.")
- **Cards.** White, 1px line border, a line icon top left, a bold title, 2 to 4 short lines. One card per row may be the highlight: filled navy with white text, or a navy or accent border.
- **Process.** Numbered circles (1 to 5) joined by sky arrows, each with a verb title: "Customer contacts us", "We triage", "We identify the owner", "We drive the fix", "We close the loop".
- **Comparison.** Two side-by-side panels with a colored top border: "Without a technical partner" in critical red, "With us involved from the start" in steady green, each a short bullet list.
- **Numbers.** Big-number stat tiles ($1.84M, 35%, 99.9%) with a one-line label; one tile may be filled to mark the number that matters. Charts are single-hue bars in the deck's main color with gray for the comparison series.
- **Pricing.** A filled navy price tile with the headline number and what it covers, beside a white tile for the secondary rate. Show the standard rate struck through next to the discounted one ("Standard rate: $225, You save $60 an hour").
- **Closing.** Navy, "Thank you", the tagline "Your Information Technology Partner", and the line "We start with the business decision, then choose the technology that makes it work."

### Content rules

- The front section is 4 to 5 value-led slides with no repetition; detail moves to an appendix.
- Every claim traces to a source document. No invented SLAs, stats or coverage language. RFP answers in an appendix are quoted verbatim.
- Say "we", not the company name over and over. Say "when we are involved", never "every deal".
- No em dashes anywhere.
- Speaker notes on workshop and education decks.
- When a partner presents (ENG, RDS), AlphaCIS is fully white-labeled: no ACIS logo, no AlphaCIS fees visible.

### Section-divider variant

For long proposals with seven or more sections (Blaze Pizza, Eggslut), use the editorial variant on the same structure:

- near-black (#1A1A1A / #0E0E0E) divider slides with a huge two-digit numeral (01 to 07) in the accent color
- section names in Georgia bold caps, with concentric thin circles in the accent at the right edge
- white content slides with a two-tone headline: the first word in black, the second in the accent ("HELP DESK  SERVICES")
- circled numbers on content cards

Keep two builds in sync when a deck ships with and without dividers.

## 3. Client and project range

Use this when building for a client or partner. The structure, voice and layout habits stay Dima's; the palette and type come from the client. Never put a client's colors on an AlphaCIS piece, or AlphaCIS colors on a white-labeled client piece.

### What carries across every brand

- **The section opener:** uppercase letter-spaced eyebrow in the accent, then a tight takeaway headline, then one muted lede.
- **One accent, used with restraint:** a neutral base (white, paper, near-black or deep navy) plus a single brand accent for eyebrows, numbers, highlight cards and CTAs.
- **Card grids with one highlight:** 3 to 5 equal cards; the one that matters gets a fill or accent border.
- **Big numbers:** stat tiles with a short label, numbers in tabular figures, the key number filled or bordered.
- **A takeaway band:** one bolded sentence across the bottom of a slide or section saying what it all means ("That last one is the expensive one.").
- **Numbered steps** with circles and arrows, labeled with verbs.
- **Hairline structure:** 1px borders and tinted panels instead of heavy shadows.
- **Hand-drawn line icons** (Feather style, 2px stroke); never emoji or clip art.
- **A characterful display face over a plain sans:** Archivo, Barlow Condensed, Georgia, Bookman, Playfair or Fraunces for headlines, with Calibri, Figtree, Manrope or Source Sans for body, and a mono for figures on web.
- **Light and dark tokens** on every web page, `prefers-reduced-motion` respected, 16px phone gutter.
- **Voice:** plain, second person, concrete numbers, short declaratives, three-beat lines ("Invitation in. Proposal out. Everything in between, automated."). No em dashes, no emoji.
- **Dense tools, generous marketing:** internal tools use 13 to 15px type and small radii; marketing pages use large radii, more space and purposeful motion.

### Palettes by client and project

| Client / project | Format | Base | Accent | Type | Character |
| --- | --- | --- | --- | --- | --- |
| AlphaCIS (ENG Partnership deck) | Deck | Navy #0F446B, paper #F5F7FA | Sky #1AAFFF | Calibri | Clean consulting; the reference deck |
| The Bandwidth Team (telecom review for ENG) | Deck | Navy #174F73, white | Cyan #26B8EE | Aptos | Same grammar as the ENG deck, built as its companion |
| P.F. Chang's (RDS, Genius Enterprise RFP) | Deck, 8.5 x 11 portrait | Ink #1F1D1C, warm paper #F7F4F1, stone #DFD6D0 | Red #BA2334, maroon #6E141F | Arial | Warm, document-like; red status pills ("SUPPORTED", "OPEN API"); confidential footer |
| Blaze Pizza | Deck with dividers | Near-black #1A1A1A, white | Orange #D1713B, rust #884926 | Georgia caps + Calibri | Editorial; numbered section dividers with concentric circles |
| Eggslut | Deck with dividers | Same as Blaze | Yellow #FFE500 | Georgia caps + Calibri | Blaze template, accent swapped for the client |
| IDS (Interior Demolition Services) | Deck, dark | #0E1116, cards #1B212A | Amber #F0A500 | Bookman Old Style bold + Calibri | Dark ROI pitch; amber borders mark the cards that matter; "Here's what we built" demo break |
| IDS Estimator app | Desktop app | #F4F6F8 / dark #0C1015 | Blue #1B5FA8 | Archivo, Inter, JetBrains Mono | Dense SaaS shell; triage colors include / exclude / caution |
| The Restaurant Owners Lunch (ENG, Bandwidth Team, Meridian, AlphaCIS) | Event landing page | Warm paper #F7F5F0 | Teal #0F6E6E, gold #C9A227 | Fraunces + Manrope | Neutral co-hosted brand; all partner logos equal; photo hero with layered scroll motion |
| Franchise lunch call script | Internal tool | #F4F6F4 | Teal #0E5A50 | Bricolage Grotesque, Instrument Sans, IBM Plex Mono | Square corners, "Say this" blocks |
| 15-Minute Bill Review | Printable checklist | Paper #F6F7F4 | Amber #B8741A | Archivo, Source Sans 3, IBM Plex Mono | Ledger sheet, square checkboxes |
| Trustegrity | Event page | Navy #0C2238 | Gold #A87A26 | Cormorant Garamond + Manrope | Ticket motif |
| The Shaffer Group (MSP) | Website | Dark #080D1A | Electric blue #3FB6FF | Archivo (wide) + Figtree | Cyber console look, heavy motion |
| Meridian Environmental | Website | #F4F7EF, forest #1D5327 | Leaf #6DB315, oil amber #E09A12 | Barlow Condensed caps + Figtree | Three-beat hero, comparison table, pill CTAs |
| My Health Membership | Website | Cream #FFFAF2 | Mint #5CAD79, sun #FFC94D, peach #FF9B7B | Playfair Display + Open Sans | Warm healthcare; one italic highlighted word per headline |
| SalesHubHQ | Workshop decks | Soft gray #F5F7F9, or dark teal #04444D | Green #10E761, cyan #1FD9C5 | Calibri | Education first, brand only on the close; 5 R's colors #0C4556, #0A7C7D, #6FA890, #C9A24B, #E8920C |

### How to adapt for a new client

1. Pull the client's logo and one or two brand colors from their site. Pick one accent.
2. Choose the base: light consulting (white or paper) by default; near-black for bold consumer brands; dark navy for tech and ROI pitches.
3. Keep the grammar above unchanged: eyebrow, takeaway headline, lede, card grid with one highlight, takeaway band, numbered steps.
4. Put the client's logo on the cover. Keep "PREPARED FOR [CLIENT]" in the cover eyebrow.
5. Check that accent text holds 4.5:1 on its background. Yellow, orange and sky accents go on dark grounds or become fills with dark text.

## 4. Tokens

### Color

| Token | Light | Dark | Use |
| --- | --- | --- | --- |
| `ground` | #FFFFFF | #08121D | Page background on marketing pages and documents. |
| `ground-2` | #F4F7FA | #101E2C | Alternate section band, and the page background of internal tools and dashboards. |
| `card` | #FFFFFF | #101E2C | Cards, panels, form fields on a ground-2 page. |
| `card-2` | #EEF3F8 | #16283A | Tinted inset inside a card: copy blocks, readouts, table header rows. |
| `deep` | #0B2A44 | #0B1A2B | Dark band sections (verdict panel, closing CTA band, video frame). Text on it is on-dark. |
| `deep-2` | #0F446B | #16283A | Second stop of a dark band; hover state of deep surfaces. |
| `ink` | #0C1C30 | #E7EEF6 | Headlines and body copy on ground, ground-2, card and card-2 (17:1 light, 16:1 dark). |
| `ink-2` | #3B4E66 | #B6C6D8 | Lede paragraphs and secondary body copy on any light ground (7.9:1). |
| `muted` | #5C6E85 | #8DA2B8 | Metadata, captions, table secondary columns, placeholder labels. 4.8:1 on ground-2, so never below 13px. |
| `on-dark` | #E8EEF6 | #E8EEF6 | Text on deep and deep-2 bands. |
| `on-dark-muted` | #9DB0C6 | #9DB0C6 | Secondary text on deep bands (6.6:1). |
| `line` | #D7E0EA | #22384E | 1px hairlines: card borders, dividers, table rules. Decorative only. |
| `line-soft` | #E7EDF3 | #1A2E42 | Row separators inside a card or table. |
| `line-strong` | #B9C6D6 | #33465E | Input and select borders. Kept from the source pages; at 1.7:1 it misses the 3:1 control-border floor, so pair every field with a visible label. |
| `brand-navy` | #014274 | #7FB2E8 | The logo navy. Eyebrows, section accents, active tabs, the 3px top bar on a highlighted card, totals. As text on any light ground (9.6:1). |
| `brand-gray` | #4A4A49 | #B6C6D8 | The logo's gray (the slash on the I and the YOUR TECHNOLOGY PARTNER lockup). Small accents and wordmark text only, never a fill for UI. |
| `action` | #1F6FB8 | #3D8FDE | The one clickable blue: primary buttons, links, focus. As text on ground and card (5.2:1). |
| `action-hover` | #185C9A | #5FA3DF | Hover and pressed state of action fills. |
| `on-action` | #FFFFFF | #06121E | Label on an action fill (5.2:1 light, 5.6:1 dark). |
| `accent-soft` | #E6EFF7 | #16283A | Tinted chip and highlight background. Put brand-navy text on it, not action (action sits at 4.5:1). |
| `sky` | #7FB2E8 | #7FB2E8 | Eyebrows and accent marks on deep bands (6.6:1 on deep). |
| `deck-sky` | #1AAFFF | #1AAFFF | Deck accent from the ENG Partnership deck: icons, process arrows, cover rule, eyebrows on navy. Fills and marks only; at 2.4:1 it is never text on white. On navy #0F446B it reaches 4.2:1, so use it for eyebrows there only at 14pt bold or larger; smaller text on navy uses sky. |
| `deck-slate` | #5F6B75 | #9AA5B4 | Deck body copy and ledes on white and paper (5.5:1). |
| `critical` | #A8452A | #E39177 | Manual, at-risk, gap, don't-build. Text and dot on critical-soft or the grounds (5.0:1). |
| `critical-soft` | #F7E9E4 | #2C1B15 | Background behind critical text: gap rows, risk pills, warning callouts. |
| `watch` | #8A6114 | #D9B461 | Needs attention, include with caution, pending. Text on watch-soft (4.9:1). |
| `watch-soft` | #F7F0DF | #2B2413 | Background behind watch text. |
| `steady` | #2C6E56 | #77C4A3 | Done, healthy, automated, included. Text on steady-soft (5.2:1). |
| `steady-soft` | #E4F0EA | #12291F | Background behind steady text. |
| `plan-elite` | #20B0E7 | #20B0E7 | Elite Care tier color: fills, rules and chart marks only (not text). |
| `plan-elite-ink` | #0B6F97 | #7FD1F2 | Elite Care label text on plan-elite-soft (5.0:1). |
| `plan-elite-soft` | #E3F5FD | #0E2A36 | Elite Care pill background. |
| `plan-complete` | #016632 | #6FD39A | Complete Care tier color; also the managed-services table header fill. As text on plan-complete-soft (6.2:1). |
| `plan-complete-soft` | #E3F2E8 | #12291F | Complete Care pill background. |
| `plan-essential` | #3F4D61 | #B6C6D8 | Essential tier label text on plan-essential-soft (7.5:1). |
| `plan-essential-soft` | #ECEFF4 | #1A2E42 | Essential pill background. |
| `link` | {action} | same as light | Inline links: an alias of action. |

### Type

| Family | Stack |
| --- | --- |
| display | Archivo, "Segoe UI", Arial, sans-serif |
| body | Calibri, Carlito, "Segoe UI", Arial, sans-serif |
| mono | "JetBrains Mono", ui-monospace, Menlo, monospace |

| Style | Family | Size | Line height | Weight | Tracking | Use |
| --- | --- | --- | --- | --- | --- | --- |
| `display` | display | 44px | 1.12 | 800 | -0.02em | One hero headline per page. 40px under 940px wide, 33px under 560px. |
| `title` | display | 36px | 1.12 | 700 | -0.02em | Section headlines on marketing pages. 28px on phones. |
| `heading` | display | 26px | 1.2 | 700 | -0.015em | Section heads in internal docs and tools, and the h1 of a dense tool page. |
| `subhead` | display | 20px | 1.3 | 700 | -0.01em | Card titles and h3. |
| `eyebrow` | display | 12px | 1.4 | 600 | 0.13em | Uppercase kicker above every section headline, in brand-navy (sky on deep bands). |
| `label` | display | 11.5px | 1.4 | 600 | 0.1em | Uppercase table headers, field labels, stat keys. |
| `button` | display | 15.5px | 1.2 | 600 | 0 | Button and CTA labels, sentence case. |
| `lede` | body | 19px | 1.55 | 400 | 0 | The paragraph under a section headline, in ink-2, capped at 60ch. |
| `body` | body | 17px | 1.6 | 400 | 0 | Body copy on marketing pages and documents. |
| `body-tool` | body | 15px | 1.5 | 400 | 0 | Body copy inside internal tools and dashboards, where density matters. |
| `caption` | body | 13px | 1.45 | 400 | 0 | Metadata and footnotes, in muted. |
| `numeral` | mono | 34px | 1.1 | 600 | 0 | Big readouts in stat tiles and calculators. |
| `data` | mono | 13px | 1.45 | 500 | 0 | IDs, counts and right-aligned table figures. |

### Spacing

| Token | Value | Use |
| --- | --- | --- |
| `space-1` | 4px | Icon to label. |
| `space-2` | 8px | Inside chips, between stacked labels. |
| `space-3` | 12px | Between related rows; tool card padding. |
| `space-4` | 16px | Phone side gutter; inside small cards. |
| `space-5` | 22px | Desktop side gutter of the 1120px wrap; card padding. |
| `space-6` | 32px | Gap between grid columns; doc shell padding. |
| `space-7` | 44px | Hero column gap. |
| `space-8` | 56px | Section padding on phones; section gap in internal docs. |
| `space-9` | 84px | Section padding on marketing pages. |

### Radius

| Token | Value | Use |
| --- | --- | --- |
| `radius-xs` | 3px | Editorial tools (the Sorter): inputs, buttons, cards. |
| `radius-sm` | 8px | Buttons, inputs, small tiles. |
| `radius-md` | 12px | Readouts, question blocks, icon tiles. |
| `radius-lg` | 14px | Cards and panels. |
| `radius-full` | 999px | Pills, status chips, segmented toggles. |

### Shadows

| Token | Value | Use |
| --- | --- | --- |
| `shadow-sm` | light: 0 1px 2px rgba(12,28,48,0.06), 0 8px 24px rgba(12,28,48,0.06)<br>dark: 0 1px 2px rgba(0,0,0,0.5) | Cards at rest. |
| `shadow-lg` | light: 0 1px 2px rgba(12,28,48,0.05), 0 18px 40px rgba(12,28,48,0.10)<br>dark: 0 18px 40px rgba(0,0,0,0.6) | Card hover (with a 4px lift), menus, the hero panel. |
| `focus-ring` | light: 0 0 0 2px #FFFFFF, 0 0 0 4px #1F6FB8<br>dark: 0 0 0 2px #08121D, 0 0 0 4px #3D8FDE | Keyboard focus on every control: a 2px ground gap then 2px of action (5.2:1). |

### Layout widths

| Token | Value | Use |
| --- | --- | --- |
| `wrap-marketing` | 1120px | Landing pages and the website. |
| `wrap-tool` | 1320px | Internal tools and dashboards. |
| `wrap-narrow` | 760px | Single-column tools and forms (the Sorter, questionnaires). |
| `measure` | 60ch | Max line length for lede and body copy. |

## 5. Component guidelines

### Button

Primary at most once per view, for the one thing the page is for.

- `primary`: `action` fill, `on-action` label. Add `arrow` on the main CTA; the arrow slides 3px on hover.
- `quiet`: transparent with a `line-strong` border, for secondary actions.
- `onDark`: white fill with `brand-navy` label, only inside `deep` bands.
- Labels are verbs in sentence case: "Book an Architecture Session", "Sort this process". Never "Click here" or "Learn more".
- Consumer provides the label and an `href` or `onClick`.

### SectionHead

Opens every section: eyebrow, headline, lede.

- `eyebrow` is 2 to 4 words, set uppercase automatically in `brand-navy` (`sky` on deep bands).
- `title` is one sentence, balanced wrap. Use `density="tool"` inside internal tools for the smaller `heading` size.
- `lede` is one or two sentences in `ink-2`, capped at 60ch.
- Do not stack two section heads or skip the eyebrow on marketing pages.

### Card

The default container: `card` fill, 1px `line` border, `radius-lg`, `shadow-sm`.

- `highlight` adds a 3px `brand-navy` top bar. One per group, for the recommended option.
- `lift` raises it 4px with `shadow-lg` on hover; use it only when the whole card is clickable.
- Place cards on `ground-2` so the white reads. Consumer provides title and children.

### StatusPill

A dot plus a word on the status tint.

- `critical` for manual, gap, at risk, don't build. `watch` for pending, caution, needs attention. `steady` for done, automated, healthy. `info` for neutral highlights in navy. `neutral` for skipped or archived.
- Always include the word; color alone never carries meaning.
- One or two words, sentence case.

### PlanPill

Names an AlphaCIS managed services tier on its fixed color.

- Tiers are Elite Care, Complete Care and Essential; the pill fills in the name.
- Use in proposals, roadmaps, client lists and pricing tables. Never recolor a tier.

### Stat

A labeled readout for stat strips and dashboards.

- `label` is short and uppercase; `value` uses tabular mono numerals; `note` says what the number covers.
- Show only real numbers with a source. Never filler stats.
- Lay out in a row of 3 to 4; they wrap on phones.

### Steps

Numbered steps written "1 · SHOW US".

- Three to five steps. Labels are two-word verbs; each step gets one sentence.
- The Architecture Session always uses the three steps shown: Show us, We architect, You decide.

### Callout

A note that must not be missed: a status-colored left rule on its soft tint.

- `watch` for constraints and cautions, `steady` for confirmed defaults and decisions, `critical` for blockers.
- `title` is one uppercase word. Body is one or two sentences.
- Use sparingly: at most one per section.

### Faq

Questions and answers in `<details>` rows with a rotating "+".

- Questions in the buyer's words; answers start with the direct answer, then one reason.
- Four to eight items near the bottom of a marketing page, before the final CTA.

### StickyCta

The bottom bar on marketing pages: `deep` at 96% opacity with one primary button.

- Appears after the hero scrolls out of view; hide it once the booking form is on screen.
- One short line of text and the same CTA as the hero.

## 6. CSS variables

Light theme values; dark values are in the color table.

```css
:root {
  --ground: #FFFFFF;
  --ground-2: #F4F7FA;
  --card: #FFFFFF;
  --card-2: #EEF3F8;
  --deep: #0B2A44;
  --deep-2: #0F446B;
  --ink: #0C1C30;
  --ink-2: #3B4E66;
  --muted: #5C6E85;
  --on-dark: #E8EEF6;
  --on-dark-muted: #9DB0C6;
  --line: #D7E0EA;
  --line-soft: #E7EDF3;
  --line-strong: #B9C6D6;
  --brand-navy: #014274;
  --brand-gray: #4A4A49;
  --action: #1F6FB8;
  --action-hover: #185C9A;
  --on-action: #FFFFFF;
  --accent-soft: #E6EFF7;
  --sky: #7FB2E8;
  --deck-sky: #1AAFFF;
  --deck-slate: #5F6B75;
  --critical: #A8452A;
  --critical-soft: #F7E9E4;
  --watch: #8A6114;
  --watch-soft: #F7F0DF;
  --steady: #2C6E56;
  --steady-soft: #E4F0EA;
  --plan-elite: #20B0E7;
  --plan-elite-ink: #0B6F97;
  --plan-elite-soft: #E3F5FD;
  --plan-complete: #016632;
  --plan-complete-soft: #E3F2E8;
  --plan-essential: #3F4D61;
  --plan-essential-soft: #ECEFF4;
  --link: var(--action);
  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-5: 22px;
  --space-6: 32px;
  --space-7: 44px;
  --space-8: 56px;
  --space-9: 84px;
  --radius-xs: 3px;
  --radius-sm: 8px;
  --radius-md: 12px;
  --radius-lg: 14px;
  --radius-full: 999px;
  --wrap-marketing: 1120px;
  --wrap-tool: 1320px;
  --wrap-narrow: 760px;
  --measure: 60ch;
  --shadow-sm: 0 1px 2px rgba(12,28,48,0.06), 0 8px 24px rgba(12,28,48,0.06);
  --shadow-lg: 0 1px 2px rgba(12,28,48,0.05), 0 18px 40px rgba(12,28,48,0.10);
  --focus-ring: 0 0 0 2px #FFFFFF, 0 0 0 4px #1F6FB8;
  --font-display: Archivo, "Segoe UI", Arial, sans-serif;
  --font-body: Calibri, Carlito, "Segoe UI", Arial, sans-serif;
  --font-mono: "JetBrains Mono", ui-monospace, Menlo, monospace;
}
```

Google Fonts: `https://fonts.googleapis.com/css2?family=Archivo:wght@500;600;700;800&family=Carlito:wght@400;700&family=JetBrains+Mono:wght@500;600&display=swap`
