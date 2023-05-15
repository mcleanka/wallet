class LoanPaymentsController < ApplicationController
  before_action :set_loan_payment, only: %i[ show edit update destroy ]

  # GET /loan_payments or /loan_payments.json
  def index
    @loan_payments = LoanPayment.all
  end

  # GET /loan_payments/1 or /loan_payments/1.json
  def show
  end

  # GET /loan_payments/new
  def new
    @loan_payment = LoanPayment.new
  end

  # GET /loan_payments/1/edit
  def edit
  end

  # POST /loan_payments or /loan_payments.json
  def create
    @loan_payment = LoanPayment.new(loan_payment_params)

    respond_to do |format|
      if @loan_payment.save
        format.html { redirect_to loan_payment_url(@loan_payment), notice: "Loan payment was successfully created." }
        format.json { render :show, status: :created, location: @loan_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_payments/1 or /loan_payments/1.json
  def update
    respond_to do |format|
      if @loan_payment.update(loan_payment_params)
        format.html { redirect_to loan_payment_url(@loan_payment), notice: "Loan payment was successfully updated." }
        format.json { render :show, status: :ok, location: @loan_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_payments/1 or /loan_payments/1.json
  def destroy
    @loan_payment.destroy

    respond_to do |format|
      format.html { redirect_to loan_payments_url, notice: "Loan payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_payment
      @loan_payment = LoanPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_payment_params
      params.require(:loan_payment).permit(:loan_id, :payment_date, :amount)
    end
end
