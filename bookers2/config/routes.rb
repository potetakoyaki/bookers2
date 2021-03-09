Rails.application.routes.draw do
  get '/search' => "searchs#search"
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get 'follower/:id' => 'relationships#follower', as: 'follower'
  get 'followed/:id' => 'relationships#followed', as: 'followed'
  get 'favorites/create'
  get 'favorites/destroy'
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites,only: [:create, :destroy]
    resources :book_comments,only: [:create, :destroy]
  end
end