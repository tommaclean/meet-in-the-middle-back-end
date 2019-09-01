Rails.application.routes.draw do
  resources :user_meetup_favs
  resources :meetups
  resources :user_meetups
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
