Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'surveys#index'
  resources :surveys do
    resources :multi_questions
    resources :range_questions
  end

  resources :options
end

# class Question < ApplicationRecord

# end

# class MultiQuestion < Question
#   has_many :options
#   validate :within_max_options


#   def within_max_options 
#     errors.add("too many options!") if options.count > 4
#   end
# end