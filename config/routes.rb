Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root 'surveys#index'
  resources :surveys do
    resources :questions
    resources :user_responses
  end

  resources :choices
end