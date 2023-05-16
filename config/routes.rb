Rails.application.routes.draw do
  resources :debts do
    resources :debt_payments
  end
  
  resources :loans do
    resources :loan_payments
  end

  resources :goals do
    resources :goal_progresses
  end

  resources :expenses, only: [:index, :create, :new, :edit]

  resources :budgets do
    resources :expenses
  end

  resources :incomes
  
  namespace :settings do
    resources :statuses
    resources :categories
    resources :income_sources
  end

  root "dashboard#index", as: 'dashboard'

end
