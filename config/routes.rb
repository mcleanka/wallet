Rails.application.routes.draw do
  resources :expenses
  resources :goals
  resources :budgets
  resources :incomes
  
  namespace :settings do
    resources :statuses
    resources :categories
    resources :income_sources
  end

  root "dashboard#index", as: 'dashboard'

end
