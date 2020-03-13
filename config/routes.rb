Rails.application.routes.draw do
  resources :users
  resources :shows
  resources :channels
  root 'channels#index'
  get '/search' => 'channels#search', :as => 'search_page'
  get '/favourite' => 'shows#favourite'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
