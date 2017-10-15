Project: surveyor
============================


[Andrea A](https://github.com/andie5/assignment_polymorphism)

## To Get Going 
- run `rake db:create`
- run `rake db:migrate`
- run `rake db:seed`

- run `rails s`
- In the browser run `localhost:3000`


[A Ruby on Rails project from the Viking Code School which uses Active Record Associations, nested forms, collection forms, range fields, and PostgreSQL](https://www.vikingcodeschool.com)


# Notes
##What is the relationship between a survey and its questions?
- A survey has many questions

## How might you create a survey and also create questions for it?
- Create a survey and questions are a child of a survey, so will become a nested resource


##What is the relationship between a multiple choice question and its options?
Options are p

How do you create a multiple choice questions and also create options for it?
- Each question will have a type property
- Based on the property (model helper), the question willbe rendered differently
