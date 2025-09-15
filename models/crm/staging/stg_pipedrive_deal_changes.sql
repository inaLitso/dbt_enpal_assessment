-- This staging model standardizes the deal_changes table and creates a synthetic unique ID (change_id)
-- since the source table does not provide a natural primary key.
SELECT
     MD5(CONCAT(deal_id, changed_field_key, CAST(change_time AS TEXT))) AS deal_change_id
     , CAST(deal_id AS TEXT) AS deal_id
     , CAST(changed_field_key AS TEXT) AS changed_field_key
     , CAST(new_value AS TEXT) AS new_value
     , CAST(change_time AS TIMESTAMP) AS changed_at
FROM {{ source('pipedrive','deal_changes') }}