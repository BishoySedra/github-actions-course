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