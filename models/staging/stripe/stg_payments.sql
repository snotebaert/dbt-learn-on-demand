with payments as (
    select
        id payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,
        created as create_at
    from
        raw.stripe.payment
)
select * from payments