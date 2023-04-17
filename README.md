# OlistStoreAnalysis

**Objective:**
The objective of the Olist Store Analysis E-commerce Dashboard is to provide a comprehensive overview of the performance of the Olist e-commerce website. The dashboard will provide insights into the payment statistics, payment types, average delivery time, average price, and payment distribution by city. The aim is to enable users to quickly identify trends, patterns, and areas of improvement in order to optimize the website's performance and enhance the customer experience. Additionally, the dashboard will highlight the top-selling products, customer demographics, and sales trends over time to help users make informed decisions about product selection, pricing, and marketing strategies.

**KPI's:**
1) Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics
2) Number of Orders with review score 5 and payment type as credit  card.
3) Average number of days taken for order_delivered_customer_date for pet_shop
4) Average price and payment values from customers of sao paulo city
5) Relationship between shipping days (order_delivered_customer_date - order_purchase_timestamp) Vs review scores.

**Dashboard:**
<img width="659" alt="Dashboard" src="https://user-images.githubusercontent.com/112420165/232522528-97a611f4-7c65-4033-ab0c-384a1cec14e3.png">

**Observation:**
**1)Weekday Vs Weekend (order_purchase_timestamp) Payment Statistics:**
The donut chart shows that the sum of payment values is higher on weekdays (77%) compared to weekends (23%). This could be because people tend to go out more on weekends and are therefore offline. Based on this logic, a business site may get more hits during weekdays. Among weekdays, Monday has the highest payment value, while for weekends, Sunday has the highest payment value. Also, credit cards were the preferred mode of payment on both weekdays and weekends.

Insight:
Weekdays have a higher sum of payment values than weekends, with credit cards being the preferred mode of payment.

Conclusion:
Businesses can target weekdays to maximize sales, and encourage the use of credit cards as the preferred mode of payment.

**2)Number of Orders with Review Score 5 and Payment Type as Credit Card:**
After applying the filter, we found that there were 44,333 orders with a review score of 5 and payment type as credit card. When we considered other payment types, the number of orders with a review score of 5 was less for debit cards. Similarly, when we considered other review scores, the number of orders with a review score of 5 was the highest for credit cards, while review score 2 had the least number of orders.

Insight:
Credit cards are the most preferred mode of payment for orders with a review score of 5.

Conclusion:
Businesses should encourage the use of credit cards to increase the number of orders with a review score of 5.

**3)Average Number of Days Taken for Order_Delivered_Customer_Date for Pet_shop:**
The average number of days taken for the product category moveis_escritorio was the highest, while artes_e_artesanato took the least number of days to deliver orders to customers. When we considered payment types, orders paid through boleto took more days to deliver, while credit card payments took less time. Similarly, when we considered cities, novo brasil took more days to deliver orders, while iomere took the least time. When we considered states, RR took more days to deliver orders, while SP took the least time.

Insight:
The average number of days taken for delivery varies based on the product category, payment type, city, and state.

Conclusion:
Businesses should focus on improving delivery times for product categories, payment types, cities, and states that take more days to deliver orders to customers.

**4)Average Price and Payment Values from Customers of Sao Paulo City:**
The product category pcs had the highest price and payment value, while casa_conforto_2 had the least price and payment value. The highest average price and payment values from customers in Sao Paulo City were through credit cards and boleto. When we considered other cities, pianco had the highest price and payment value, while BA had the highest price and payment value when we considered states.

Insight:
Product categories have varying prices and payment values, with credit cards and boleto being the preferred mode of payment in Sao Paulo City.

Conclusion:
Businesses can focus on product categories that have high prices and payment values and encourage the use of credit cards and boleto as the preferred mode of payment.

**5)Relationship Between Shipping Days (Order_Delivered_Customer_Date - Order_Purchase_Timestamp) Vs Review Scores:**
We found that there was no relationship between review scores and shipping days since the highest and lowest shipping days had a review score of 1, while the highest and lowest review scores had a shipping day of 5.

Insight:
There is no relationship between review scores and shipping days.

Conclusion:
Businesses should focus on other factors.
