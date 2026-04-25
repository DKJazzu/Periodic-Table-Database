# Periodic Table Database

A high-precision chemical element lookup tool built with PostgreSQL, Bash, and Git. This project involved refactoring a relational database into a normalized schema and creating a command-line interface (CLI) to query element data dynamically.

## Features
* Normalization: Refactored a flat database into a multi-table relational schema (3NF).
* Data Integrity: Implemented FOREIGN KEY, UNIQUE, and NOT NULL constraints.
* Dynamic CLI: A Bash script that accepts atomic numbers, symbols, or names as arguments.
* Automated Formatting: Uses psql flags and string manipulation to ensure clean output.
* Version Controlled: Developed using a strict Conventional Commits workflow.

## Tech Stack
* Database: PostgreSQL
* Scripting: Bash (Bourne Again SHell)
* Version Control: Git 

## Database Schema
The database consists of three interlocking tables:

1. elements: Stores the atomic_number, symbol, and name.
2. properties: Stores numeric data like atomic_mass, melting_point_celsius, and boiling_point_celsius.
3. types: A lookup table for element categories (metal, nonmetal, metalloid).

## Usage
Ensure you have PostgreSQL installed and the database initialized. Run the script from your terminal:
``` Bash
./element.sh 1
./element.sh He
./element.sh Lithium
```

## Example Output
```
The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius.
```

## Installation & Setup

### 1. Clone the repository:

```Bash
git clone <your-repository-url>
Rebuild the database:
```
### 2. Rebuild the database:

```Bash
psql -U postgres < periodic_table.sql
Set permissions:
```
### 3. Set permissions:

```Bash
chmod +x element.sh
```

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.
