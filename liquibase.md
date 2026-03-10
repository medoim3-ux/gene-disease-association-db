# Liquibase Notes

## Purpose
Liquibase can be used in this project for database version control.

## Why Use Liquibase
Liquibase helps track database schema changes in a structured and reproducible way.
Instead of manually editing the database, changes can be stored in changelog files and versioned in GitHub.

## Core Concepts
- Changelog: a file that stores database changes
- Changeset: a single tracked database change
- Update: applies pending changes to the target database

## Relevance to This Project
In this project, Liquibase could be used to manage:
- table creation
- schema updates
- additional columns
- future database modifications

## Documentation Note
Liquibase is included here as a documented extension of the project.
Practical execution may be added in a later stage.
