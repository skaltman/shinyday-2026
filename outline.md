# Weaving in trust

Data agents in 2026 · J&J Shiny Day · October 15, 2026

## Brief spoken opening

* We were really worried about Databot a year ago.
* Today I want to offer a more nuanced approach: what has changed, and how
  we weave trust into the systems themselves so these things work for us.
* Because it's Shiny Day, I'll spend some time on commons, a new open-source
  package built on shinychat.
* Go straight into the eval story; no opinions-on-AI diagram.

## The story of an eval

* Bluffbench: what we asked models to do and why the failures worried us.
* November 2025 results: interventions didn't help much.
* The models got better: show the newer results.
* A rising tide lifts all boats.
* We can't really make statements like "LLMs can't do x" because it changes.
* Takeaway: some of the things we worried about before are much less relevant
  now. Update our judgments as the evidence changes.

## Better models aren't the whole system

* This doesn't mean everything is solved.
    * Brief bluffbench2 example: improvement isn't uniform across tasks.
    * Keep this a qualification, not a second extended warning story.
* LLMs don't automatically have the context they need.
    * Definitions, conventions, documentation, and tacit organizational knowledge.
    * A model and a harness alone are not enough.
    * Depending on the organization, making this context available can be a lot
      of work in itself.
* Transition: some problems diminish with better models; others require
  deliberate work on the surrounding system.

## Weaving in trust

* What trust means here: willingness to rely on a system for a particular task
  despite uncertainty, based on positive expectations.
    * Feeling trust is different from the system deserving it.
    * Trust it to do what, with which data, under which conditions?
* AI as normal technology: useful deployment depends on engineering and
  institutional arrangements, not just individual oversight.
* There are layers to trust and different parts of the system we need to trust.
    * Will my model provider use my data in ways I don't want, or that violate
      regulation?
        * Provider agreements and data-handling controls rather than relying
          only on individuals to decide what is safe to share.
        * Individuals may not understand what the agent can and cannot see.
    * Will my employees use only the allowed models?
        * Make approved models the only ones available in the environment.
        * Example: model availability in Posit Assistant on Workbench.
    * Will the model give me correct results?
        * Use a good model and give it the information it needs.
        * Harness design has improved as well.
        * One fundamental: the agent must run code!
            * Agents can do things "in their head," but then we lose
              reproducibility and transparency.
    * Will people use LLMs responsibly?
        * Don't just rely on people checking results.
        * The harness has to work well with the person, giving the right amount
          of information at the right times.
        * Why individual oversight isn't enough.
        * Three examples: auto mode; showing all code isn't always necessary;
          slowing down the EDA process.
* Guardrails, not hope: build trustworthiness and reliability into the system.

## Commons: making this concrete

* But what if the user is not a data scientist?
    * Internal example: someone fires up Claude Code and gets "vibe analysis" slop.
* Trusted code: reuse calculations that data scientists already vet and maintain.
* Introduce commons and its trust flow.
* Demos:
    * DevRel agent.
    * Clinical-trials agent: reuse the existing demo slides and recording.
* Build / Deploy / Improve: the lifecycle boxes, not the loops diagram.
    * Build: connect trusted calculations, data, and context.
    * Integrations: Snowflake and other sources.
    * Deploy: collaborators use the agent.
    * Improve: trajectory reviewer, including how to hook it up.
    * Review recurring questions and update trusted calculations and context.

## Close

* Difference between commons, shinychat, querychat, and Posit Assistant:
  help people decide what to reach for, rather than an exhaustive comparison.
* Return to the thesis: don't just ask individuals to be careful; weave
  reliability and appropriate constraints into the environment.

## Optional material

* Databot warning image as a brief opening reference, not a separate section.
* Jaggedness plot only if it adds something the two evals don't already show.




* Use the best models --> Use a model appropriate for the task. Understand what different models are good at and where they tend to go wrong. 
* Have a human reviewer --> design a system to be trustworthy and don't rely on individual willpower for review
* be (a little) afraid --> there's lots to do and the task is now on how to actual build these systems, "normal" engineering, data science, it practices 


don't want to overtrust, don't want to undertrust 