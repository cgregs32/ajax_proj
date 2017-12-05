Rails.application.routes.draw do
  root 'welcome#index'

  get '/welcome/create', to: 'welcome#create_user', as: 'create_user'
  post '/welcome/create', to: 'welcome#post_user', as: 'post_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
