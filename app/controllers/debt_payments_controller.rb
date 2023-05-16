class DebtPaymentsController < ApplicationController
  before_action :set_debt_payment, only: %i[ show edit update destroy ]
  before_action :set_debt, only: %i[ new create update, edit]

  # GET /debt_payments or /debt_payments.json
  def index
    @debt_payments = DebtPayment.all
  end

  # GET /debt_payments/1 or /debt_payments/1.json
  def show
  end

  # GET /debt_payments/new
  def new
    @debt_payment = DebtPayment.new
  end

  # GET /debt_payments/1/edit
  def edit
  end

  # POST /debt_payments or /debt_payments.json
  def create
    @debt_payment = DebtPayment.new(debt_payment_params)

    respond_to do |format|
      if @debt_payment.save
        format.html { redirect_to debt_url(@debt), notice: "Debt payment was successfully created." }
        format.json { render :show, status: :created, location: @debt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @debt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debt_payments/1 or /debt_payments/1.json
  def update
    respond_to do |format|
      if @debt_payment.update(debt_payment_params)
        format.html { redirect_to debt_payment_url(@debt_payment), notice: "Debt payment was successfully updated." }
        format.json { render :show, status: :ok, location: @debt_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @debt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_payments/1 or /debt_payments/1.json
  def destroy
    @debt_payment.destroy

    respond_to do |format|
      format.html { redirect_to debt_payments_url, notice: "Debt payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_payment
      @debt_payment = DebtPayment.find(params[:id])
    end
    
    def set_debt
      @debt = Debt.find(params[:debt_id])
    end

    # Only allow a list of trusted parameters through.
    def debt_payment_params
      params.require(:debt_payment).permit(:debt_id, :amount, :notes, :repaid, :repayment_date)
    end
end
