
{% snapshot stg_mock_orders_snap %}

{{
    config(
      target_database='dataops-310808',
      target_schema='dbt_gbergamaschi',
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from `dataops-310808.dbt_gbergamaschi.mock_orders`

{% endsnapshot %}
