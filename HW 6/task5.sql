-- 1

SELECT T2.first_name, T2.surname, T1.bill_date, COUNT(T1.bill_no) AS number_of_bills
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter_no = T2.staff_no
GROUP BY T1.waiter_no, T1.bill_date
HAVING COUNT(T1.bill_no) >= 2;
-- 2

SELECT T2.room_name, COUNT(T1.table_no) AS number_of_tables
FROM restRest_table T1
INNER JOIN restRoom_management T2
ON T1.room_name = T2.room_name
WHERE T1.no_of_seats > 6
GROUP BY T2.room_name;

-- 3	

SELECT T2.room_name, SUM(T1.bill_total) AS total_bill_amount
FROM restBill T1
INNER JOIN restRoom_management T2
ON T1.table_no = T2.room_name
GROUP BY T2.room_name;

-- 4

SELECT T1.first_name, T1.surname, SUM(T2.bill_total) AS total_bill_amount
FROM restStaff T1
INNER JOIN restStaff T3
ON T1.staff_no = T3.headwaiter
INNER JOIN restBill T2
ON T3.staff_no = T2.waiter_no
GROUP BY T1.staff_no
ORDER BY total_bill_amount DESC;


-- 5

SELECT cust_name, AVG(bill_total) AS average_bill
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6

SELECT T2.first_name, T2.surname, T1.bill_date, COUNT(*) AS number_of_bills
FROM restBill T1
INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
GROUP BY T1.waiter_no, T1.bill_date
HAVING COUNT(*) >= 3;