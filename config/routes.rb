Reto3::Application.routes.draw do
  resources :messages
  resource :session
  root :to => "messages#index"
end
