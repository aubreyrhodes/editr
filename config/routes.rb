Editr::Application.routes.draw do
  root to: 'home#index'
  resources :sessions, only: [:create]
end
