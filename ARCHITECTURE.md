# Architecture

The Consultant is a small machine with a few load-bearing parts. This document describes them at the level a reader needs to judge the method. It does not reproduce the production implementation.

```
                 ┌──────────┐
  client brief ──▶│  Intake  │── accepted brief ──▶┌──────────┐
                 └──────────┘                     │  Launch  │
                                                    └────┬─────┘
                                                         ▼
                                              ┌────────────────────┐
                                              │  Legs (stages)     │
                                              │  work → gate →     │
                                              │  verdict → next    │
                                              └────────┬───────────┘
                                                         ▼
                                              ┌────────────────────┐
                                              │  Close             │
                                              │  claims · decisions│
                                              │  · open items      │
                                              └────────────────────┘
```

## The parts

**Intake.** Before an engagement exists, the job is scoped: what the client asked, what material they provided, what is in and out of scope, and what "done" means. The brief is reviewed by a session that did not write it. Nothing launches without an approved brief on record.

**Launch.** Launching creates the engagement's workspace, records it in a registry, and starts the first stage. The registry is the single source of truth for which engagements exist and what state each is in — a stranded job is a visible row, not a lost folder.

**Legs.** Work runs in stages ("legs"), each with a defined job: investigate, draft, review, decide. A leg's output is a file on disk, so the next stage reads the work itself rather than a summary of it.

**Gates.** Between stages sit checks. A gate asks a fixed question — is the record complete, are the citations real, does every claim have evidence? — and returns a verdict: pass, or fail with findings. A failed gate sends the work back for another round, with the findings in view. A gate never grades its own author's work.

**Claims.** Important assertions are recorded as claims: the statement, the evidence behind it, and its status. Claims are what make the work re-checkable weeks later, by someone who was not in the room.

**Close.** Closing writes the record: decisions made, deliverables, and open items carried forward. The engagement's folder is the archive; the registry row is the index.

## Three design rules

1. **The checker is never the author.** Every review is done by a fresh session reading the work off disk.
2. **A stop is the trigger.** Review happens when a stage ends — never mid-work, and never skipped because the work "looks fine."
3. **Everything is a file.** If it isn't written down, it didn't happen. Verdicts, decisions, and claims are all files, so the whole engagement can be audited after the fact.
