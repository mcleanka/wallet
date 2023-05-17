class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[ show edit update destroy ]

  # before_action :set_budget, only: %i[ show edit ]

  # GET /expenses or /expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /expenses/1 or /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses or /expenses.json
  def create
    @expense = Expense.new(expense_params)

    respond_to do |format|
      if @expense.save
        format.html { redirect_to expense_url(@expense), notice: "Expense was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1 or /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to expense_url(@expense), notice: "Expense was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1 or /expenses/1.json
  def destroy
    @expense.destroy

    respond_to do |format|
      format.html { redirect_to expenses_url, notice: "Expense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end
    
    def set_budget
      @budget = Budget.find(params[:budget_id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:title, :status_id, :amount, :budget_id, :description, :date)
    end
end
