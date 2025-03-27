select 
    id,
    first_name,
    last_name,    
   {{concat(['first_name','last_name'])}} as Full_Name
from
    {{ref("STG_CUSTOMERS")}}