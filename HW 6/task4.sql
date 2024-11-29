-- 1

SELECT T1.cust_name, T1.bill_total
FROM restBill T1
INNER JOIN restStaff T2 ON T1.waiter_no = T2.staff_no
WHERE T1.bill_total > 450
AND T2.first_name = 'Charles';

-- 2

SELECT T1.first_name, T1.surname
FROM restStaff T1
INNER JOIN restRoom_management T2 ON T1.staff_no = T2.headwaiter
INNER JOIN restRest_table T3 ON T2.room_name = T3.room_name
INNER JOIN restBill T4 ON T3.table_no = T4.table_no
WHERE T4.cust_name = 'Nerida'
AND T4.bill_date = 20160111;

-- 3	

SELECT cust_name
FROM restBill
WHERE bill_total =(SELECT MIN(bill_total)FROM restBill);

-- 4

SELECT T1.first_name, T1.surname
FROM restStaff T1
LEFT JOIN restBill T2
ON T1.staff_no = T2.waiter_no
WHERE T2.waiter_no IS NULL;

-- 5

SELECT T1.cust_name, T2.first_name AS headwaiter_first_name, T2.surname AS headwaiter_surname, T3.room_name
FROM restBill T1
INNER JOIN restStaff T2
ON T1.waiter_no = T2.staff_no
INNER JOIN restRoom_management T3
ON T2.staff_no = T3.headwaiter
WHERE T1.bill_total = (
SELECT MAX(bill_total)
FROM restBill
);
