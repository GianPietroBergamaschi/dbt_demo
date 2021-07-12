{%- macro cents_to_dollar(price, decimal_places=2) -%}
round(1.0 * {{ price }}/100, {{ decimal_places }})
{%- endmacro -%}