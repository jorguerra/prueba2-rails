Rails.application.routes.draw do
  root 'tasks#index'
  devise_for :users

  post 'complete/:task', controller: 'tasks', action: :complete, as: 'complete'
  delete 'uncomplete/:task', controller: 'tasks', action: :uncomplete, as: 'uncomplete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
