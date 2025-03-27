select
  id as payment_id,
  {{ cents_to_dollars('amount') }} as amount_usd,
  payment_method
from {{ ref('payments') }}