# plsql-marketing-ass3
# 📊 E-Commerce Product Marketing Performance System (PL/SQL Project)

This project demonstrates how to use **PL/SQL Collections, Records, and GOTO** in a practical, simple, and real-world scenario related to **e-commerce marketing performance tracking**.


---

## 📌 Project Summary

A marketing team wants to track how different products perform each week.  
Each product has:

- **Product ID**
- **Product Name**
- **Weekly Sales** → stored using a **VARRAY**
- **Marketing Campaigns Used** → stored using a **Nested Table**
- All this information together stored inside a **Record**
- Multiple records are stored inside an **Associative Array**


---

## 🎯 Learning Objectives Covered

| Topic | Demonstrated In Project |
|-------|--------------------------|
| **VARRAY** | Stores 4-week sales per product |
| **Nested Table** | Stores flexible marketing campaigns |
| **Record** | Groups product information |
| **Associative Array** | Stores multiple products |
| **GOTO statement** | Used for sales validation |
| **Loops & Output** | Used to print reports |

This project satisfies all requirements of a PL/SQL Collections & Records assignment.

---

## 📂 Folder Structure

plsql-marketing-performance/

│
├── src/

│ └── marketing.sql
│

├── docs/

│ ├── overview.md

│ └── explanation.md


---

## 🧪 How the System Works

### ➤ Step 1: Create Data Types  
The program defines:

- A **VARRAY** type for weekly sales  
- A **Nested Table** type for marketing campaigns  
- A **Record** type for full product details  
- An **Associative Array** type to store all products  

### ➤ Step 2: Insert Products  
Two example products are added:

1. **Smartphone X1**  
2. **Wireless Headphones Z**

Each has:
- 4 weeks of sales  
- 1–2 marketing campaigns  

### ➤ Step 3: Validate Sales  
Using `GOTO check_sales`, the code checks if product 1 has negative sales.

### ➤ Step 4: Display Reports  
Final reports show:

- Product ID  
- Product Name  
- Total Weekly Sales  
- All campaigns used  

---

## 📄 Main SQL File

The full PL/SQL implementation is located here:


It includes all:

- Types  
- Records  
- Collections  
- GOTO  
- Output formatting  

---

## 🖥 Example Output

---- PRODUCT PERFORMANCE REPORT ------

Product ID: 301

Name: Smartphone X1

Total Monthly Sales: 730

Campaigns Used:

- Instagram Ads
- Email Marketing


More detailed output examples are stored in:



## 📘 Additional Project Notes

Simple explanations of each PL/SQL feature and why it was used can be found in:

## docs/explanation.md


The full system description is in:



## docs/overview.md


---

## 🔗 Useful Oracle Documentation (Official)

- PL/SQL Collections & Records  
  https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/plsql-collections-and-records.html  
- VARRAY & Nested Table Types  
  https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/plsql-collections-and-records.html#GUID-A9134E89  
- GOTO Statement  
  https://docs.oracle.com/en/database/oracle/oracle-database/21/lnpls/control-statements.html#GUID-BCBF92E6  

---
