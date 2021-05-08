with payments as (
    select
        id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created
    from
        raw.stripe.payment
)
select * from payments