-- MERGE avoids duplicates and supports late-arriving data
{{ config(
    materialized='incremental',
    unique_key='deal_change_id',
    incremental_strategy='merge'
) }}
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
    AND changed_at >= (
            SELECT COALESCE(MAX(stage_started_at), '1900-01-01')
            FROM {{ this }}
        )
{% endif %}