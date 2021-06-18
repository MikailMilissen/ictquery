Rails.application.routes.draw do
  resources :job_seekers
  resources :users
  root 'homepage#index'
  get 'homepage/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
