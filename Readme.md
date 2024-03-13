

---

# Company Database SQL Project

This project is an example SQL database designed for managing various aspects of a company, including employees, clients, branches, and suppliers. It provides a set of SQL queries to perform common operations and retrieve useful information from the database.

## Table of Contents

- [Introduction](#introduction)
- [Database Schema](#database-schema)
- [Queries](#queries)
- [Setup](#setup)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Company Database SQL Project aims to demonstrate the design and implementation of a relational database system for managing different entities within a company. This project includes tables for employees, clients, branches, suppliers, and their relationships, allowing for efficient data management and retrieval.

## Database Schema

The database schema consists of the following tables:

- **Employees**: Contains information about company employees, including employee ID, name, birth date, sex, hourly pay, salary, manager ID, and branch ID.
- **Clients**: Stores details of clients, such as client ID and name, along with the branch they belong to.
- **Branch_Suppliers**: Manages the relationships between branches and suppliers, storing branch name, supplier name, and supplied items.
- **Works_With**: Tracks the sales made by employees to clients, including employee ID, client ID, and total sales.
- **Branch**: Provides information about company branches, including branch ID, branch name, manager ID, and manager start date.

## Queries

The project includes a set of SQL queries to perform various operations on the database, such as retrieving employee information, client details, sales data, and more. These queries are designed to demonstrate the flexibility and usefulness of the database schema in managing company-related data.

## Setup

To set up the project locally, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine using `git clone`.

2. **Database Setup**: Use the provided SQL script to create and populate the database with sample data. Make sure to update the database connection details in the script as needed.

3. **Run Queries**: Execute the SQL queries provided in the project to retrieve information from the database.

## Contributing

Contributions to the project are welcome! If you have any suggestions, improvements, or additional features to add, please feel free to open an issue or submit a pull request. Your feedback and contributions help make this project better for everyone.

## License

This project is licensed under the [MIT License](LICENSE).

---
