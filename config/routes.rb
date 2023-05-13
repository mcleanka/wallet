Rails.application.routes.draw do
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
  
  root "dashboard#index"

end
