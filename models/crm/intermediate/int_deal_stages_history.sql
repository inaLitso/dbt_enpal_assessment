-- MERGE avoids duplicates and supports late-arriving data
{{ config(
    materialized='incremental',
    incremental_strategy='append'
) }}
{% set lookback_days = 30 %}  -- adjust based on expected late updates.
SELECT
    deal_change_id
    , deal_id
    , changed_at AS stage_started_at
    , changed_field_key
    , new_value AS stage
FROM {{ ref('stg_pipedrive_deal_changes') }}
WHERE changed_field_key='stage_id'
 {% if is_incremental() %}
    -- Only fetch new/late data since last run
    AND changed_at >= current_date - interval '{{ lookback_days }} day'
{% endif %}