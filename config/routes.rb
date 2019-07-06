Rails.application.routes.draw do
  post "likes/:tweet_id/create" => "likes#create"
  post "likes/:tweet_id/destroy" => "likes#destroy"

  devise_for :users
  get 'tweets/about' => 'tweets#about'
  root 'tweets#index'

  resources :tweets do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show,:edit,:update]

end
