{% macro concat(fields) -%}
    {{ return(adapter.dispatch('concat')(fields)) }}
{%- endmacro %}

{% macro default__concat(fields) -%}
    {{ return(dbt_utils.concat(fields)) }}
{%- endmacro %}

{% macro snowflake__concat(fields) %}
    {% for field in fields %}
        nullif({{ field }},'') {{ ' || ' if not loop.last }}
    {% endfor %}
{% endmacro %}