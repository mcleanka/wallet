Rails.application.routes.draw do
  resources :debt_payments
  resources :debts
  resources :loans do
    resources :loan_payments
  end

  resources :goals do
    resources :goal_progresses
  end

  resources :expenses
  resources :budgets
  resources :incomes
  
  namespace :settings do
    resources :statuses
    resources :categories
    resources :income_sources
  end

  root "dashboard#index", as: 'dashboard'

end
