Reservester::Application.routes.draw do
  devise_for :owners
  root to: "welcome#index"

  resources :restaurants
end
