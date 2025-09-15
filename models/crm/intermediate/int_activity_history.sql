{{ 
config(
    materialized='incremental',
    unique_key='activity_id',
    incremental_strategy='merge'
) 
}}

{% set lookback_days = 30 %}  -- adjust based on expected late updates.

SELECT
    activity_id
    , assigned_to_user_id
    , deal_id
    , is_done
    , due_to_at
    , activity_type
FROM {{ ref('stg_pipedrive_activity') }}
{% if is_incremental() %}
    -- Only process recent activities to reduce volume
    WHERE due_to_at >= current_date - interval '{{ lookback_days }} day'
{% endif %}
