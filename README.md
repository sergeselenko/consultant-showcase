# The Consultant — a multi-agent consulting engine (showcase)

**What this is:** a public showcase of a consulting system its builder has used for 220+ engagements. It shows the method — how a consulting job is structured, checked, and closed — not any client's work. No client material is in this repository.

## The problem it solves

AI assistants tend to accommodate: they produce a plan, the plan sounds good, and nobody checks whether it was tested, reviewed, or even followed. This system was built as the corrective. Every engagement runs through the same discipline:

1. **Intake** — the job is defined and accepted in writing before anything starts.
2. **Legs** — the work runs in stages, each with its own job to do.
3. **Gates** — nothing moves forward until a check passes. A failed check sends the work back with findings, not forward with a smile.
4. **Claims** — every important assertion is written down as a claim with its evidence, so it can be re-checked later.
5. **Close** — the engagement ends with a record of what was decided, what was delivered, and what was left open.

The governing idea: **a system that checks its own work before anything reaches a person.**

## What's in this showcase

- `ARCHITECTURE.md` — how the machine is put together, in plain language.
- `HOW-AN-ENGAGEMENT-RUNS.md` — the lifecycle of one engagement, step by step.
- `sample-engagement/` — one complete, **fictional** diagnostic engagement, written for this showcase. Every name, company, and number in it is invented.
- `scripts/` — small, generic check scripts that illustrate the gate pattern. They are illustrative examples, not the production machinery.

## What this is not

- It is not the production system, and it is not a client list.
- It is not a framework you install and run. The production machinery is private; this showcase exists so you can judge the method and the builder.
- It contains no client data, no engagement records, and no internal reference material.

## Who built it

Serge Osaulenko — AI consultant, St. Petersburg, Florida. Founder of a franchise brand (built and exited), owner of a real estate brokerage, and builder of AI systems that run in real businesses. More at [selenko.com](https://selenko.com).

## License

Code in `scripts/` is under the MIT License (see `LICENSE`). Prose in this repository is under CC BY 4.0 (see `LICENSE-PROSE.md`).
