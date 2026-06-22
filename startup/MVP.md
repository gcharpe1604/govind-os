# MVP

> **Purpose:** Define, scope, and ship the smallest thing that validates your core hypothesis.

---

## What MVP Means

MVP = Minimum Viable Product.

The emphasis is on **viable**, not minimum.

- **Minimum:** Only the features needed to test one hypothesis.
- **Viable:** Delivers enough value that real users will engage with it honestly.

An MVP is not a prototype. It is a learning instrument.

---

## MVP Mindset

The goal of an MVP is not to impress users.

The goal is to answer:

> "Does this solution solve the problem well enough that users will change their behavior?"

If you are building features before answering this question, you are not building an MVP.

---

## The Build-Measure-Learn Loop

```text
Hypothesis → Build → Ship → Measure → Learn → Next Hypothesis
```

Each iteration should produce a concrete answer to a specific question.

*Never iterate without knowing what question you are trying to answer.*

---

## Step 1: Define The Core Hypothesis

Write one sentence:

> "I believe [user] will [do specific behavior] because [solution solves specific problem]."

The MVP only needs to test this hypothesis. Nothing else.

---

## Step 2: Scope The MVP

For each proposed feature, ask:

- Is this required to test the core hypothesis?
- If removed, does the hypothesis become untestable?

Keep features that are required. Cut everything else.

**Common MVP scoping errors:**

| Error | Description |
|---|---|
| Feature creep | Adding features that feel important but do not test the hypothesis |
| Polish over learning | Investing in design before validating behavior |
| Full-stack too early | Building backend infrastructure before validating user demand |
| Multi-hypothesis MVP | Trying to answer multiple hypotheses at once |

---

## Step 3: Choose The Right MVP Type

| Type | When to Use |
|---|---|
| Concierge MVP | Do the service manually to validate demand before automating |
| Landing Page MVP | Test interest before building anything |
| Wizard of Oz MVP | Simulate automation with humans behind the scenes |
| Prototype MVP | Basic functional version to test core interaction |
| Single-feature MVP | Full product with exactly one core feature |

Choose based on how much you need to build to get an honest answer.

---

## Step 4: Define Success Criteria Before Shipping

Before launch, answer:

- What user behavior would prove the hypothesis correct?
- What would disprove it?
- How many users are needed for a meaningful signal?
- What is the measurement method?

Do not define success criteria after seeing results. That is rationalization, not learning.

---

## Step 5: Ship

Ship when:

- [ ] Core hypothesis is testable.
- [ ] Success criteria are defined.
- [ ] At least 3–5 target users are committed to try it.
- [ ] Measurement method is in place.

Do not wait for the product to be perfect. Wait for it to be testable.

---

## Step 6: Measure

Measure behavior, not opinion.

| Weak Signal | Strong Signal |
|---|---|
| "I liked it" | Returned and used it again |
| "I would recommend it" | Actually recommended it |
| "That's a good idea" | Paid for it / signed up |

---

## Step 7: Learn And Decide

After measurement:

- Did users behave as the hypothesis predicted?
- If yes → strengthen this direction.
- If no → identify what was wrong and form a new hypothesis.

A failed hypothesis is progress. An untested hypothesis is debt.

---

## Common MVP Failure Modes

- **Building too much:** Scope until it hurts, then scope again.
- **No success criteria:** Without criteria, every result gets rationalized as validation.
- **Testing with friends:** Friends will use anything. Find strangers.
- **Measuring vanity metrics:** Page views and signups without activation are noise.
- **Skipping the learning step:** Shipping without extracting lessons breaks the loop.

---

## References

- `startup/IDEA_VALIDATION.md`
- `startup/PRODUCT_STRATEGY.md`
- `core/DECISION_MAKING.md`
