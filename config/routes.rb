Reservester::Application.routes.draw do

  root to: "welcome#index"

  devise_for :users
  
  resources :categories
  resources :restaurants do 
    resources :stars
    resources :reservations 
  end



  get 'dashboard', :controller => 'users', :action => 'dashboard'
end
