Editr::Application.routes.draw do
  root to: 'home#index'
  resources :sessions, only: [:create]
  resource :new_post, only: [:show, :create]
end
