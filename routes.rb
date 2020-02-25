Rails.application.routes.draw do
  get 'posts/index'
  get '/' => 'home#top'
  get 'howto' => 'home#howto'
  get 'login' => 'home#login'
  get 'new' => 'home#new'
  get 'recommend' => 'home#recommend'
  get 'signup' => 'home#signup'
  get 'write' => 'home#write'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
