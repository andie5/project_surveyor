# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clear the tables to start with"
Survey.destroy_all

def 

   puts "Creating empty Survey.."
 
   Survey.create!(title: "Empty Survey",
                  description: "This Survey has no questions.")
 
   puts "Empty Survey created."
 end


def create_survey(title, desc)
  s = Survey.new(:title => title, :description => desc)
  s.save
  s
end


def create_question(surv, question_type, content, no_options,options_selected, required)
  surv.questions.build(:question_type => question_type, 
                       :content => content,
                       :no_options => no_options,
                       :options_selected => options_selected,
                       :required => required)
end

puts "Creating survey"
puts "******************************"
create_empty_survey
s1 = create_survey("Clothes", "All about clothes")
s2 = create_survey("Animals", "All about animals")
s3 = create_survey("School", "All about school")

puts "Creating question 1"
puts "******************************"
q1_s1 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "How many shoes do you have?",
                       :no_options => 3,
                       :options_selected => "Just One",
                       :required => true)

q2_s1 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "Select all the designers you have clothes by?",
                       :no_options => 3,
                       :options_selected => "Multiple",
                       :required => true)

q3_s1 = s1.questions.create(s1, :question_type => "Multiple Choice", 
                       :content => "Number of sequins on drss?",
                       :no_options => 2,
                       :options_selected => "Just One",
                       :required => false)

puts "Creating choices for question 1"
puts "******************************"
q1_s1.choices.create!(option: "More than 20")
q1_s1.choices.create!(option: "10-20")
q1_s1.choices.create!(option: "Less than 10")


puts "Creating choices for question 2"
puts "******************************"
q2_s1.choices.create!(option: "DKNY")
q2_s1.choices.create!(option: "Gucci")
q2_s1.choices.create!(option: "Prada")

puts "Creating choices for question 3"
puts "******************************"
q3_s1.choices.create!(option: "20")
q3_s1.choices.create!(option: "50")
q3_s1.choices.create!(option: "Less than 10")





puts "Creating question 2"
puts "******************************"
q1_s2 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "How many animals do you have?",
                       :no_options => 2,
                       :options_selected => "Just One",
                       :required => true)

q2_s2 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "What pets do you have?",
                       :no_options => 3,
                       :options_selected => "Multiple",
                       :required => true)

q3_s2 = s1.questions.create(s1, :question_type => "Multiple Choice", 
                       :content => "Favourite animal?",
                       :no_options => 3,
                       :options_selected => "Just One",
                       :required => true)

puts "Creating choices for question 2"
puts "******************************"
q1_s2.choices.create!(option: "1")
q1_s2.choices.create!(option: "2 or more")

puts "Creating choices for question 2"
puts "******************************"
q2_s2.choices.create!(option: "Dog")
q2_s2.choices.create!(option: "Cat")
q2_s2.choices.create!(option: "Fish")

puts "Creating choices for question 2"
puts "******************************"
q3_s2.choices.create!(option: "Elephant")
q3_s2.choices.create!(option: "Monkey")
q3_s2.choices.create!(option: "Dolphin")






puts "Creating question 3"
puts "******************************"
q1_s3 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "Favourite subject?",
                       :no_options => 4,
                       :options_selected => "Multiple",
                       :required => true)

q2_s3 = s1.questions.create(  :question_type => "Multiple Choice", 
                       :content => "School Ranking?",
                       :no_options => 3,
                       :options_selected => "Just One",
                       :required => true)

q3_s3 = s1.questions.create(s1, :question_type => "Multiple Choice", 
                       :content => "Number of teachers?",
                       :no_options => 3,
                       :options_selected => "Just One",
                       :required => true)

puts "Creating choices for question 3"
puts "******************************"
q1_s2.choices.create!(option: "Maths")
q1_s2.choices.create!(option: "Science")
q1_s2.choices.create!(option: "Drama")
q1_s2.choices.create!(option: "Music")

puts "Creating choices for question 3"
puts "******************************"
q1_s2.choices.create!(option: "1")
q2_s2.choices.create!(option: "2")
q1_s2.choices.create!(option: "3 or below")

puts "Creating choices for question 3"
puts "******************************"
q1_s2.choices.create!(option: "10")
q2_s2.choices.create!(option: "15")
q1_s2.choices.create!(option: "20")