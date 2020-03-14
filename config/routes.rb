Rails.application.routes.draw do

  post '/login', to: 'managers#login'
  get '/persist', to: 'managers#persist'
  post '/new_employee', to: 'employees#create'
  post '/new_company', to: 'companies#create'
  

  resources :employees
  resources :companies
  resources :managers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
