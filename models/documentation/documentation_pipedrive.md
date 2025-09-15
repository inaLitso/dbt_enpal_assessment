{% docs activity_id %}
Unique identifier of the activity.
{% enddocs %}

{% docs assigned_to_user %}
User ID of the person assigned to the activity.
{% enddocs %}


{% docs deal_change_id %}
A unique id for every deal change. It is a concat of the deal id, field change and timestamp of change
{% enddocs %}

{% docs deal_id %}
Associated deal ID for this activity.
{% enddocs %}

{% docs is_done %}
Boolean flag indicating whether the activity is completed.
{% enddocs %}

{% docs due_to_at %}
Datetime when the activity is due.
{% enddocs %}

{% docs activity_type %}
Type of the activity (e.g., call, meeting, email).
{% enddocs %}

{% docs is_active %}
Boolean flag whether the activity type is active.
{% enddocs %}

{% docs activity_type_id %}
Primary key of the activity type.
{% enddocs %}

{% docs activity_type_name %}
Name of the activity type.
{% enddocs %}

{% docs activity_type_category %}
System-defined category of the activity type.
{% enddocs %}

{% docs change_time %}
Datetime when the deal change occurred.
{% enddocs %}

{% docs changed_field_key %}
Field key that was modified in the deal.
{% enddocs %}

{% docs new_value %}
New value after the field was changed.
{% enddocs %}

{% docs field_key %}
Unique identifier key of the field.
{% enddocs %}

{% docs field_value_options %}
Available value options for the field (if applicable).
{% enddocs %}

{% docs field_id %}
Primary key of the field.
{% enddocs %}

{% docs field_name %}
Display name of the field.
{% enddocs %}

{% docs stage_id %}
Unique identifier of the stage.
{% enddocs %}

{% docs stage_name %}
Name of the stage.
{% enddocs %}

{% docs user_id %}
Unique identifier of the user.
{% enddocs %}

{% docs user_email %}
Email of the user.
{% enddocs %}

{% docs user_name %}
Name of the user.
{% enddocs %}

{% docs user_modified %}
Datetime when the user record was last modified.
{% enddocs %}

{% docs kpi_name %}
Human-readable label of the funnel KPI or activity type.
Example values include 'Lead Generation', 'Qualified Lead','Sales Call 1', 'Needs Assessment', 'Sales Call 2','Proposal/Quote Preparation', 'Negotiation', 'Closing','Implementation/Onboarding', 'Follow-up/Customer Success','Renewal/Expansion'.
{% enddocs %}

{% docs funnel_step %}
Funnel step ID or stage identifier.
Based on stage_id from deals or activity funnel mapping.
Also it includes the sub-step 2.1 and 3.1 based on the call activities.
{% enddocs %}

{% docs deals_count %}
Number of distinct deals (deal_id) that reached the funnel step during the reporting month.
{% enddocs %}

{% docs option_id %}
Option identifier for the field (string extracted from JSON)
{% enddocs %}

{% docs option_label %}
Human-readable label of the field option.
{% enddocs %}