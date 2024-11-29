-- 1

SELECT first_name , surname
FROM restStaff T1
INNER JOIN restBill  T2
ON T1.staff_no = T2.waiter_no
WHERE cust_name = 'Tanya Singh';

-- 2

SELECT room_date
FROM  restRoom_management T1
INNER JOIN restStaff T2
ON T1.headwaiter = T2.headwaiter
WHERE room_name = 'green';

-- 3	

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restStaff T2 ON T1.headwaiter = T2.staff_no
WHERE T2.first_name = 'Zoe' AND T2.surname = 'Ball';

-- 4

SELECT T2.first_name, T2.surname AS waiter_name, T1.cust_name, T1.bill_total
FROM restBill T1
INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
ORDER BY T1.bill_total DESC;

-- 5

SELECT DISTINCT T3.first_name, T3.surname
FROM restBill T1
INNER JOIN restBill T2 ON T1.table_no = T2.table_no
INNER JOIN restStaff T3 ON T2.waiter_no = T3.staff_no
WHERE T1.bill_no IN (14, 17) AND T1.waiter_no != T2.waiter_no;

-- 6

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restRoom_management T2 ON T1.staff_no = T2.headwaiter
WHERE T2.room_name = 'Blue' AND T2.room_date = 160312
UNION
SELECT T3.first_name, T3.surname
FROM restStaff T3
INNER JOIN restRoom_management T4 ON T3.headwaiter = T4.headwaiter
WHERE T4.room_name = 'Blue' AND T4.room_date = 160312;