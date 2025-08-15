# GitHub Actions Notes

## Components of GitHub Action
- **Trigger**: Initiates the workflow based on events like pushes, pull requests, or scheduled times.
- **Jobs**: A collection of steps that execute in a defined sequence.
- **Runner**: The environment where jobs are executed (e.g., GitHub-hosted or self-hosted).
- **Steps**: Individual tasks or commands executed within a job.

## Types of Triggers
- **Webhooks**: Triggered by repository events such as pushes, pull requests, issues, or releases.
- **Scheduled Triggers**: Use cron syntax to run workflows at specific intervals (e.g., daily or weekly).
- **Manual Triggers**: Initiated manually using the `workflow_dispatch` event.

## CronJob Syntax Breakdown
Each of the five digits in a cron expression represents a specific time unit:

1. **Minute**: Specifies the minute (0–59).
    - Example: `0` runs at the start of the hour.
    - Example: `*/15` runs every 15 minutes.

2. **Hour**: Specifies the hour (0–23).
    - Example: `0` runs at midnight.
    - Example: `12` runs at noon.

3. **Day of Month**: Specifies the day of the month (1–31).
    - Example: `1` runs on the first day of the month.
    - Example: `15` runs on the 15th day of the month.

4. **Month**: Specifies the month (1–12).
    - Example: `1` runs in January.
    - Example: `12` runs in December.

5. **Day of Week**: Specifies the day of the week (0–7, where both 0 and 7 represent Sunday).
    - Example: `1` runs on Monday.
    - Example: `5` runs on Friday.

### Combined Example
- `0 12 1 1 *`: Runs at noon on January 1st, regardless of the day of the week.
- `0 0 * * 0`: Runs at midnight every Sunday.

## GitHub CLI Commands for Workflows
The GitHub CLI (`gh`) provides powerful commands to manage workflows directly from the terminal. Here are the most important commands you should know:

### Workflow Management
- **List Workflows**: View all workflows in a repository.
  ```bash
  gh workflow list
  ```
- **View Workflow Details**: Display detailed information about a specific workflow.
  ```bash
  gh workflow view <workflow-name>
  ```
- **Enable Workflow**: Enable a disabled workflow.
  ```bash
  gh workflow enable <workflow-name>
  ```
- **Disable Workflow**: Disable a workflow.
  ```bash
  gh workflow disable <workflow-name>
  ```

### Workflow Runs
- **List Workflow Runs**: View all runs for a specific workflow.
  ```bash
  gh run list --workflow=<workflow-name>
  ```
- **View Run Details**: Display detailed information about a specific run.
  ```bash
  gh run view <run-id>
  ```
- **Re-run Workflow**: Re-run a specific workflow run.
  ```bash
  gh run rerun <run-id>
  ```

### Trigger Workflow
- **Dispatch Workflow**: Manually trigger a workflow using the `workflow_dispatch` event.
  ```bash
  gh workflow run <workflow-name>
  ```

These commands simplify managing workflows and monitoring their execution directly from the command line.