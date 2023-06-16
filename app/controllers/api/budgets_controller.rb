class Api::BudgetsController < ApiController
  def index
    budgets = Budget.all
    render json: budgets
  end
end
