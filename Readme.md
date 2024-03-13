

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

Below are some sample SQL queries that can be executed on the database:

1. Retrieve all employees' information.
2. Retrieve all clients' information.
3. Retrieve the names and salaries of employees who earn more than $50,000 per year.
4. Retrieve the names and birth dates of all male employees.
5. Retrieve the names and total sales of employees who have made sales to clients.
6. Retrieve the names of clients along with the total sales made to them.
7. Retrieve the names of clients along with the branch they belong to.
8. Retrieve the names of employees who work with a specific client.
9. Retrieve the names of employees along with their managers' names.
10. Retrieve the names of branch managers and the branches they manage.
11. Retrieve the names of branches and the number of employees working in each branch.
12. Retrieve the names of branch suppliers along with the products they supply to each branch.
13. Retrieve the names of employees who are managers.
14. Retrieve the names of clients who haven't made any purchases.
15. Retrieve the average salary of employees in each branch.
16. Retrieve the names of clients along with the total sales made by employees working in their respective branches.
17. Retrieve the names of employees who have worked with multiple clients.
18. Retrieve the names of employees who have the same manager.
19. Retrieve the names of clients along with the branches they belong to and the total sales made by employees from each branch.
20. Retrieve the names of employees who have been with the company for more than 5 years.

These queries demonstrate the flexibility and usefulness of the database schema in managing company-related data.

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

Feel free to customize this README file according to your specific project details and requirements. Make sure to include any additional instructions, dependencies, or usage guidelines as needed.

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
