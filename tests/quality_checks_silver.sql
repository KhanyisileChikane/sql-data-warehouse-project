/*
========================================================================
Quality Checks
========================================================================
Script Purpose:
      This script performs various quality checks for data consistency,
      and standardization across the 'silver' schemas. It includes checks for:
      - Null or duplicate primary keys.
      -Unwanted spaces in string fields.
      - Data standardization and consistency.
      - Invalid date ranges and orders.
      - Data consistency between related fields.

Usage Notes:
      - Run these checks after data loading silver Layer.
      - Investigating and resolve any discrepencies found during checks.
========================================================================
*/
