# Session 1: Introduction to DBMS & SQL

## 1. DBMS & Data Models
- **DBMS (Database Management System):** Software that manages data in databases, provides data consistency, security, and query support.
- **Data Models:**
  - Hierarchical Model
  - Network Model
  - Relational Model (RDBMS)
  - Entity-Relationship (ER) Model
  - Object-Oriented Model

## 2. What is a Database?
- A structured collection of related data stored electronically.
- Examples: Banking system records, e-commerce user transactions, healthcare patient history.

## 3. DBMS Terminologies
- **Table / Relation** – collection of rows and columns
- **Tuple** – a row in a table
- **Attribute** – a column in a table
- **Schema** – structure of the database
- **Instance** – snapshot of data at a given time
- **Keys** – unique identifiers for tuples

## 4. RDBMS Basics
- Based on relational model (tables with rows & columns).
- Popular RDBMS: MySQL, PostgreSQL, Oracle, SQL Server, SQLite.
- Provides SQL for querying.

## 5. SQL Command Categories
- **DDL (Data Definition Language):**
  - CREATE, DROP, ALTER
- **DML (Data Manipulation Language):**
  - INSERT, UPDATE, DELETE
- **DQL (Data Query Language):**
  - SELECT (with WHERE, LIMIT, conditions)

## 6. Data Types
- Numeric: INT, FLOAT, DECIMAL
- Character: CHAR, VARCHAR, TEXT
- Date & Time: DATE, TIME, TIMESTAMP
- Boolean: TRUE/FALSE

## 7. Keys & Attributes
- **Primary Key:** Unique identifier of a record (no NULL).
- **Foreign Key:** Refers to PK in another table.
- **Parent/Child Table:** Relation between PK and FK.

## 8. SQL Constraints
- NOT NULL – column must have value
- UNIQUE – unique values in column
- PRIMARY KEY – unique + not null
- FOREIGN KEY – enforce referential integrity
- CHECK – enforce condition on values
- DEFAULT – set default value if not provided

---
This file provides **theory foundation** for Session 1. Practical examples are in `02_examples/`.
