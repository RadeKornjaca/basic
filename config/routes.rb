Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  } 
  
  root to: 'pages#welcome'

  resources :profiles, :only => [:show] do
    get '/verify', :to => 'profiles#verify', :as => 'verify'
  end

end
