# 🗄️ MySQL Complete Course Notes

Welcome to the master resource for the **MySQL** portion of the Data Analyst Bootcamp. This single document contains comprehensive text-based notes, clean syntax blocks, execution logic, and interview-ready articulation phrases for every module covered in the video series.

---

## 🎯 Purpose of This Document

While video tutorials are incredible for visual learning, programming requires quick reference points. The main goals of these notes are:
*   **To Accelerate Learning:** Skip the scrubbing through hours of video timelines to find a specific syntax block.
*   **To Build a High-Value Reference:** Provide clean, production-ready SQL templates, execution breakdowns, and context for every single command covered in the course.
*   **To Support the Community:** Create a highly readable, open-source, text-based study guide for any aspiring data professional following Alex's curriculum.

---

## 💡 Why These Notes Are Helpful For You

*   **Interview-Ready Articulation:** Every major coding block includes *Speech-Fluency Check Phrases* to help you confidently explain your query logic out loud during technical data analyst interviews.
*   **Under-the-Hood Mechanics:** Complex SQL operations feature *Visual Query Maps* so you understand the exact order in which MySQL compiles and processes your filters, aggregations, and joins.
*   **Typo-Free, Validated Code:** All code templates are thoroughly audited for syntax precision, ensuring you can copy, paste, and run queries seamlessly against the target database schemas.

---

## 🛠️ Environment Setup & Database Initialization

A step-by-step layout for standing up your local database sandbox and preparing the schema scripts before writing your first query lines.

### 📂 Setup Architecture & Workflow

The environment initializes through a four-phase local pipeline:

├── 💻 1. Download & Install (Host Server)
│   ├── ⚙️ Download official MySQL Installer (Community Server)
│   └── 🛠️ Provision MySQL Workbench using default developer configurations
│
├── 📥 2. Target Dataset Acquisition
│   ├── 🌐 Navigate to: https://github.com
│   └── 📦 Download repository ZIP file and unpack core scripts locally
│
├── ⚡ 3. Schema Initialization
│   ├── 🔌 Open MySQL Workbench and connect to local instance
│   ├── 📂 File -> Open SQL Script -> Select 'Beginner - Parks_and_Rec_Create_db.sql'
│   └── ⚡ Execute script (Lightning Bolt icon) to instantiate tables
│
└── 🔄 4. Data Sprints Refresh
    └── 📊 Retain 'layoffs.csv' from the directory for upcoming cleaning modules

### ⚙️ Technologies & Environment Stack

| Component / Utility | Purpose & Implementation Details |
| :--- | :--- |
| **MySQL Community Server** | Local relational database engine hosting tables, data partitions, and schemas. |
| **MySQL Workbench** | Visual GUI client used to write scripts, execute queries, and view execution plans. |
| **Parks & Rec Script** | Setup SQL file (`Beginner - Parks_and_Rec_Create_db.sql`) that initializes tables. |
| **Layoffs Dataset** | Target CSV file (`layoffs.csv`) reserved for the intermediate data cleaning blocks. |

---

## 🗺️ SQL Curriculum Tracker

Below is the master curriculum log for this file. As we progress through the course, detailed notes for each section will be unlocked right below this tracker.

| Module Level | Topic Block | Status | Key Concepts Covered |
| :--- | :--- | :--- | :--- |
| 🟢 **Beginner** | SELECT Statement | 📅 *Next Up* | Column selection, PEMDAS math operations, DISTINCT values |
| 🟢 **Beginner** | WHERE Clause | 📅 *Upcoming* | Logical operators (`AND`/`OR`/`NOT`), `LIKE` wildcards |
| 🟢 **Beginner** | GROUP BY + ORDER BY | 📅 *Upcoming* | Data aggregations (`SUM`, `AVG`, `COUNT`), sorting records |
| 🟢 **Beginner** | HAVING vs WHERE | 📅 *Upcoming* | Aggregate filtering vs row-level filtering |
| 🟢 **Beginner** | LIMIT & Aliasing | 📅 *Upcoming* | Row count restrictions, renaming columns (`AS`) |
| 🔵 **Intermediate** | Joins & Unions | 📅 *Upcoming* | `INNER`, `LEFT`, `RIGHT` joins, combining result sets |
| 🔵 **Intermediate** | Case Statements | 📅 *Upcoming* | Conditional logic inside queries |
| 🔵 **Intermediate** | Window Functions | 📅 *Upcoming* | `PARTITION BY`, `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()` |
| 🔴 **Advanced** | CTEs & Temp Tables | 📅 *Upcoming* | Common Table Expressions, volatile workspace tables |
| 🔴 **Advanced** | Stored Procedures | 📅 *Upcoming* | Saving and running reusable dynamic query blocks |
| 🔴 **Advanced** | Triggers & Events | 📅 *Upcoming* | Automation scripts based on table actions or intervals |
