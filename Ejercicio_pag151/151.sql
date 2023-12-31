-- MySQL Script generated by MySQL Workbench
-- Sun Nov  5 18:23:02 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS ej151;
USE ej151;

-- -----------------------------------------------------
-- Table `mydb`.`salesman`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ej151.`salesman` (
  `salesman_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(30) NOT NULL,
  `city` VARCHAR(15) NOT NULL,
  `commission` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`salesman_id`))
ENGINE = InnoDB;

INSERT IGNORE INTO ej151.salesman (salesman_id, name, city, commission) VALUES
(1, 'John Smith', 'New York', 0.12),
(2, 'Jane Doe', 'Los Angeles', 0.15),
(3, 'Michael Johnson', 'Chicago', 0.10),
(4, 'Sarah Brown', 'San Francisco', 0.14),
(5, 'David Wilson', 'Boston', 0.11),
(6, 'Laura Lee', 'Houston', 0.13),
(7, 'William Davis', 'Miami', 0.12),
(8, 'Emily Jones', 'Philadelphia', 0.10),
(9, 'James Taylor', 'Dallas', 0.16),
(10, 'Olivia Martinez', 'Atlanta', 0.13);


-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ej151.`customer` (
  `customer_id` INT UNSIGNED NOT NULL,
  `cust_name` VARCHAR(30) NOT NULL,
  `city` VARCHAR(15) NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;

INSERT IGNORE INTO ej151.customer (customer_id, cust_name, city, grade) VALUES
(1, 'ABC Company', 'New York', 2),
(2, 'XYZ Corporation', 'Los Angeles', 1),
(3, 'LMN Enterprises', 'Chicago', 3),
(4, 'PQR Inc.', 'San Francisco', 2),
(5, 'EFG Ltd.', 'Boston', 3),
(6, 'RST Group', 'Houston', 1),
(7, 'UVW Industries', 'Miami', 2),
(8, 'IJK Ltd.', 'Philadelphia', 3),
(9, 'MNO Co.', 'Dallas', 1),
(10, 'HIJ Corporation', 'Atlanta', 2);


-- -----------------------------------------------------
-- Table `mydb`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ej151.`orders` (
  `ord_no` INT UNSIGNED NOT NULL,
  `purch_amt` DECIMAL(8,2) NOT NULL,
  `ord_date` DATE NOT NULL,
  `customer_id` INT NOT NULL,
  `salesman_id` INT NOT NULL,
  `salesman_salesman_id` INT UNSIGNED NOT NULL,
  `customer_customer_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ord_no`, `salesman_salesman_id`, `customer_customer_id`),
  INDEX `fk_orders_salesman_idx` (`salesman_salesman_id` ASC) VISIBLE,
  INDEX `fk_orders_customer1_idx` (`customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_salesman`
    FOREIGN KEY (`salesman_salesman_id`)
    REFERENCES `mydb`.`salesman` (`salesman_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_customer1`
    FOREIGN KEY (`customer_customer_id`)
    REFERENCES `mydb`.`customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT IGNORE INTO ej151.orders (ord_no, purch_amt, ord_date, customer_id, salesman_id, salesman_salesman_id, customer_customer_id) VALUES
(1, 500.00, '2023-10-27', 1, 1, 1, 1),
(2, 750.00, '2023-10-27', 2, 2, 2, 2),
(3, 300.00, '2023-10-27', 3, 3, 3, 3),
(4, 600.00, '2023-10-27', 4, 4, 4, 4),
(5, 400.00, '2023-10-27', 5, 5, 5, 5),
(6, 850.00, '2023-10-27', 6, 6, 6, 6),
(7, 700.00, '2023-10-27', 7, 7, 7, 7),
(8, 550.00, '2023-10-27', 8, 8, 8, 8),
(9, 950.00, '2023-10-27', 9, 9, 9, 9),
(10, 450.00, '2023-10-27', 10, 10, 10, 10);

SELECT COUNT(*) FROM orders; -- Elementos en total de la tabla orders
SELECT DISTINCT * FROM customer; -- Customers con nombres distintos
SELECT * FROM salesman ORDER BY commission; -- Ordenar salesman
SELECT * FROM customer ORDER BY customer_id LIMIT 5; -- 5 primeros customers
SELECT MIN(PURCH_AMT) FROM orders; -- PURCH_AMT menor
SELECT MAX(PURCH_AMT) FROM orders; -- PURCH_AMT mayor

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
