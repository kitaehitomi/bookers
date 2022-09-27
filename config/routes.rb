Rails.application.routes.draw do
  root :to => 'books#new'
  resources :users
  resources :books
  resources :lists
  post 'lists' => 'lists#create'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
