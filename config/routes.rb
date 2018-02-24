Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'urls#new'
  get 'urls/:random_string' => 'urls#show'
  
  resources :urls
end
