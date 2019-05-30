# Users and Projects 'Has-Many-Through' Relationship

## Objectives

Create and modify tables using ActiveRecord migrations.
Build associations between 'Has-Many-Through' models using Active Record macros.

### Overview

In this lab, we are creating a student's database for teachers. We'll be working with a Users-Projects domain model. We will have a user, project, teacher and commit model. These models will be associated in the following way:

A user has many commits and has many projects through commits.
A commit belongs to an user and belongs to a project.
A project has many commits and has many users through commits.

A user has a name attribute.
A project has a name, description, and a due date attribute.
A commit has a commit message, commit date, on-time, user_id, and a project_id attribute.

A teacher has many users.
A user belongs to a teacher.

## Instructions

1. Fork and clone this repository.
2. Bundle install everything in the project directory.
3. Run 'rake db:migrate' inside your terminal to migrate all of your tables.
4. Run 'rake db:seed' inside your terminal to use all of the instances.
5. Run 'chmod +x bin/student.rb' to give permission to run the CLI
6. Run the CLI by calling '.bin/student.rb' and go to testing!

## Features of the CLI
1. Logging in as an existing teacher
  1a. Username: Charlie, Password: password
  1b. Username: Rishi, Password: password
  1c. Username: Matt, Password: password
2. Registering a new teacher
3. Changing the settings of your account
  3a. Changing the password for your account
  3b. Deleting your account
4. Viewing list of students
  3a. Viewing a particular student's projects
  3b. Finding the student with most/least commits
  3c. Adding/deleting a student
5. Viewing list of projects
  4a. Viewing the details of a particular project
  4b. Finding the project with the most/least commits
  4c. Adding/deleting a project
  4d. Extending a project's due date
