# System Overview

This PL/SQL project is designed to track the marketing performance of products in an e-commerce environment.

## Components

### 1. VARRAY (WeeklySales)
- Fixed 4-week cycle
- Good for monthly sales tracking

### 2. Nested Table (CampaignTable)
- Stores marketing campaigns used
- Dynamic and resizable

### 3. Record (ProductRec)
Groups:
- Product ID  
- Name  
- Sales  
- Campaigns  

### 4. Associative Array (ProductList)
- Stores multiple products
- Uses integer indexing

### 5. GOTO Check
Used to revalidate sales if any negative weekly value is detected.

---

## Workflow Diagram (Text Version)

Product → Weekly Sales → Validated → Added to Report  
             ↓  
        Marketing Campaigns  
             ↓  
      Stored in Main Product List  
