Rails.application.routes.draw do
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post "logout" => 'users#logout'

  get 'users/:id/likes' => 'users#likes'
  post 'users/:id/update' => "users#update"
  get 'users/:id/edit' => 'users#edit'
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#id"

  get "posts/index" => "posts#index"
  get 'posts/search' => 'posts#search'
  get 'posts/love' => 'posts#love'
  get 'posts/society' => 'posts#society'
  get 'posts/mystery' => 'posts#mystery'
  get 'posts/fantasy' => 'posts#fantasy'
  get 'posts/novel' => 'posts#novel'
  get 'posts/history' => 'posts#history'
  get 'posts/gosip' => 'posts#gosip'
  get 'posts/others' => 'posts#others'
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/overwrite" => "posts#overwrite"
  post "posts/:id/create" => "posts#create"



  get '/' => 'home#top'
  get 'howto' => 'home#howto'
  get 'new' => 'home#new'
  get 'write' => 'home#write'
  get 'agreement' => 'home#agreement'
  get 'privacypolicy' => 'home#privacypolicy'
  get 'contact' => 'home#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
