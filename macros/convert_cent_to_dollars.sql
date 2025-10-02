{% macro convert_cents(ordered_quantity,euro=True,rate=0.85) %}
    {% if euro %}
        {{rate}}*{{ordered_quantity}} / 100 as ordered_quantity_converted
    {% else %}
        {{ordered_quantity}} / 100 as ordered_quantity_converted
    {% endif %}
{% endmacro %}