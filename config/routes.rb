Reservester::Application.routes.draw do

  root to: "welcome#index"

  devise_for :owners

  resources :restaurants do 
    resources :reservations 
  end
end
