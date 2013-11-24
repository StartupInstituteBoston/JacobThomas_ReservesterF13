Reservester::Application.routes.draw do

  root to: "welcome#index"

  devise_for :owners
  
  resources :categories
  resources :restaurants do 
    resources :reservations 
  end


  get 'dashboard', :controller => 'owners', :action => 'dashboard'
end
