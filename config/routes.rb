Rails.application.routes.draw do
  get 'new', to: 'user#new'
  root 'user#new'
  post 'create', to: 'user#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
