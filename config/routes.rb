Rails.application.routes.draw do
  
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :users
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  get "users/:id/follow" => "users#follow"
  get "users/:id/follower" => "users#follower"
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  get '/search' => 'search#search'
end