SELECT
    field_id
    , field_key
    , elem ->> 'id' AS option_id
    , elem ->> 'label' AS option_label
FROM {{ ref('stg_pipedrive_fields') }} ,
LATERAL jsonb_array_elements(field_value_options::jsonb) AS elem
WHERE
    field_value_options IS NOT NULL
    AND field_value_options <> ''