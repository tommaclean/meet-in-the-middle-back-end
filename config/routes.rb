Rails.application.routes.draw do
  get 'home/index'
  resources :user_meetup_favs
  resources :meetups
  resources :user_meetups
  resources :users

  get '/', to: 'home/index'
  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/single_user/past_meetups', to: 'user_meetups#past_meetups'
  post '/single_user/meetups', to: 'meetups#create'
  delete '/single_user/meetup_favs', to: 'user_meetup_favs#delete'
  get '/single_user/meetup_favs', to: 'user_meetup_favs#favs'
  post '/single_user/add_meetup_fav', to: 'user_meetup_favs#create'

end
