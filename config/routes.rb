Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#welcome'

  get '/profiles/:id', :to => 'profiles#mail', :as => 'profile_mail'

  resources :profiles, :only => [:show]

end
