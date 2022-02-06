Rails.application.routes.draw do
  #root to:'homes#top'
  #get 'books/new'
  #get 'books'=>'books#index'
  #get 'books/show'
  #get 'books/edit'
  #get 'homes/top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
