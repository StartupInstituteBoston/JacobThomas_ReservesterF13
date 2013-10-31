Reservester::Application.routes.draw do
  root to: "welcome#index"

  resources :restaurants
end
