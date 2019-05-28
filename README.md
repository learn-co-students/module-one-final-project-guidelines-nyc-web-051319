# Users and Projects 'Has-Many-Through' Relationship

## Objectives

Create and modify tables using ActiveRecord migrations.
Build associations between 'Has-Many-Through' models using Active Record macros.

### Overview

In this lab, we'll be working with a Users-Projects domain model. We will have a user, project and commit model. These models will be associated in the following way:

A user has many commits and has many projects through commits.
A commit belongs to an user and belongs to a project.
A project has many commits and has many users through commits.

A user has a name attribute.
A project has a name, description, and a due date attribute.
A commit has a commit message, commit date, on-time, user_id, and a project_id attribute.

## Instructions

1. Fork and clone this repository.
2. Bundle install everything in the project directory.
3. Create a 'db' directory inside the project directory, and inside of that create a migrate directory.
  3a. Create all of your migrate files inside this migrate folder (ex. '001_create_users.rb')
4. Create a 'app' directory inside the project directory, and inside of that create a models directory.
  4a. Create all of your model files inside this migrate folder (ex. 'user.rb')
5. Run 'rake db:migrate' inside your terminal to migrate all of your tables.
6. Run 'rake db:seed' inside your terminal to use all of the instances.
7. Run the CLI to go testing!

---
### Common Questions:
- How do I turn off my SQL logger?
```ruby
# in config/environment.rb add this line:
ActiveRecord::Base.logger = nil
```
