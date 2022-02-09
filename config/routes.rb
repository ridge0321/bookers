Rails.application.routes.draw do
  #root to:'homes#top'
  #get 'books/new'
  #get 'books'=>'books#index'
  #get 'books/:id'=>'books#show'
  #post 'books/create'=>'books#create'
  #get 'books/:id/edit'=>'books#edit'
  #get 'homes/top'
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
