Rails.application.routes.draw do
  get 'histories/my_histories', to: 'histories#my_histories'
  resources :histories
  get 'users/sign_up', to: "users#new"
  
  post 'users', to: "users#create"
  resources :sessions, only: [:create, :destroy, :new]
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
