# Database Normalization

Database normalization is the process of organizing data in a database to reduce redundancy and improve data integrity.  
It involves dividing large tables into smaller ones and defining relationships between them.

---

## **1. First Normal Form (1NF)**
A table is in **1NF** if:
- Each cell contains only one value (atomic).
- Each record is unique.

**Example (Before 1NF):**
| StudentID | Name  | Courses       |
|------------|-------|---------------|
| 1          | Alex  | Math, English |
| 2          | Sara  | Physics       |

**After 1NF:**
| StudentID | Name  | Course  |
|------------|-------|---------|
| 1          | Alex  | Math    |
| 1          | Alex  | English |
| 2          | Sara  | Physics |

---

## **2. Second Normal Form (2NF)**
A table is in **2NF** if:
- It is in 1NF.
- All non-key attributes depend on the whole primary key.

**Example (Before 2NF):**
| StudentID | Course  | StudentName |
|------------|----------|-------------|
| 1          | Math     | Alex        |
| 1          | English  | Alex        |

**After 2NF:**
**Students**
| StudentID | StudentName |
|------------|--------------|
| 1          | Alex         |

**Courses**
| StudentID | Course  |
|------------|----------|
| 1          | Math     |
| 1          | English  |

---

## **3. Third Normal Form (3NF)**
A table is in **3NF** if:
- It is in 2NF.
- No non-key attribute depends on another non-key attribute.

**Example (Before 3NF):**
| StudentID | StudentName | Department | DepartmentHead |
|------------|--------------|-------------|----------------|
| 1          | Alex         | CS          | Dr. Smith      |
| 2          | Sara         | CS          | Dr. Smith      |

**After 3NF:**
**Students**
| StudentID | StudentName | Department |
|------------|--------------|-------------|
| 1          | Alex         | CS          |
| 2          | Sara         | CS          |

**Departments**
| Department | DepartmentHead |
|-------------|----------------|
| CS          | Dr. Smith      |

---

✅ **Result:** Data redundancy is reduced, updates are easier, and consistency is maintained.
