-- E-COMMERCE PRODUCT MARKETING PERFORMANCE SYSTEM

DECLARE 
TYPE WeeklySales IS VARRAY(4) OF NUMBER;-- varry to store weekly sales
TYPE CampaignTable IS TABLE OF VARCHAR2(50);
TYPE ProductRec IS RECORD(
product_id NUMBER,
product_name VARCHAR2(100),
sales WeeklySales,
campaigns CampaignTable
);
TYPE ProductList IS TABLE OF ProductRec INDEX BY PLS_INTEGER;

    products    ProductList;

    total_sales NUMBER := 0;
    i           NUMBER;

BEGIN
-- Smartphone

products(1).product_id := 301;
products(1).product_name := 'Smartphone X1';
products(1).sales  := WeeklySales(150,180, 210, 190);
products(1).campaigns := CampaignTable('Instagram Ads', 'Email Marketing');

-- Wireless Headphones

products(2).product_id := 302;
products(2).product_name := 'Wireless Headphone Z';
products(2).sales  := WeeklySales(80, 95, 120, 110);
products(2).campaigns := CampaignTable('TikTok Ads');

<<check_sales>>
total_sales := 0;

FOR i IN 1 .. products(1).sales.COUNT LOOP
IF products(1).sales(i) < 0 THEN
DBMS_OUTPUT.PUT_LINE('Invalid sales detected! Rechecking...');


GOTO check_sales;
END IF;

total_sales := total_sales + products(1).sales(i);
END LOOP;

-- Report 1

DBMS_OUTPUT.PUT_LINE('---- PRODUCT PERFORMANCE REPORT ------');
DBMS_OUTPUT.PUT_LINE(' Product ID: ' || products(1).product_id);
DBMS_OUTPUT.PUT_LINE(' Name: ' || products(1).product_name);
DBMS_OUTPUT.PUT_LINE(' Product ID: ' || total_sales);
DBMS_OUTPUT.PUT_LINE(' Campaigns Used');

FOR i IN 1 .. products(1).campaigns.COUNT LOOP
DBMS_OUTPUT.PUT_LINE('- ' || products(1).campaigns(i));
END LOOP;

-- Report 2

DBMS_OUTPUT.PUT_LINE(CHR(10) || '------ PRODUCT PERFORMANCE REPORT ------');
DBMS_OUTPUT.PUT_LINE('Product ID: ' || products(2).product_id);
DBMS_OUTPUT.PUT_LINE('Name: ' || products(2).product_name);

total_sales := 0;
FOR i IN 1 .. products(2).sales.COUNT LOOP
total_sales := total_sales + products(2).sales(i);
END LOOP;

DBMS_OUTPUT.PUT_LINE('Total Monthly Sales: ' || total_sales);
DBMS_OUTPUT.PUT_LINE('Campaigns Used:');

FOR i IN 1 .. products(2).campaigns.COUNT LOOP
DBMS_OUTPUT.PUT_LINE('- ' || products(2).campaigns(i));
END LOOP;

END;
/
