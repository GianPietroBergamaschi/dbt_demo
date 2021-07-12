{% macro limit_data_in_dev(filter_column, range_before, range_num) %}
{%- if target.name == 'dev' -%}
where {{ filter_column }} >= date_add(current_date(), INTERVAL {{ range_before }} {{ range_num }})
{%- endif -%}
{% endmacro %}