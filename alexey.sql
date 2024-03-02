select netology3.orders.product_name, netology1.customers.name, netology1.customers.surname
from netology3.orders
         inner join netology1.customers
                    on netology3.orders.customer_id = customers.id
where lower(netology1.customers.name) = 'alexey';