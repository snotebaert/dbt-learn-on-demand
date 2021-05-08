with payment as (
    select
        id,
        orderid,
        paymentmethod,
        status,
        amount,
        created
    from
        raw.stripe.payment
)
select
    id,
    orderid as order_id,
    paymentmethod as payment_method,
    created as payment_date,
    amount as amount
from
    payment;