Rails.application.routes.draw do
  root 'tweets#index'
  get 'tweets/new' => 'tweets#new', as: :new_tweet
  post 'tweets' => 'tweets#create', as: :create_tweet
  get 'tweets/:id' => 'tweets#show', as: :tweet

  delete 'tweets/:id' => 'tweets#delete'

  get 'sign_in' => 'sessions#new', as: :sign_in
   post 'sign_in' => 'sessions#create'
   delete 'sign_in' => 'sessions#delete'

   get 'registration' => 'users#new', as: :new_user
   post 'registration' => 'users#create', as: :create_user


   get 'followers' => 'users#index', as: :users
   get 'following' => 'users#following', as: :following
   post 'follow/:user_id' => 'users#follow', as: :follow
   post 'unfollow/:user_id' => 'users#unfollow', as: :unfollow

   get 'feed' => 'tweets#feed', as: :feed

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
