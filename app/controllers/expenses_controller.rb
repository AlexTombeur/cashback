class ExpensesController < ApplicationController

  before_action :find_expense, only: [:show, :edit, :destroy, :approve, :reject, :request]

  def index
    @expenses = current_user.expenses
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.user = current_user
      if @expense.save
        redirect_to expense_path(@expense)
      else
        render :new
      end
  end

  def edit
  end

  def update
      if @expense.update(expense_params)
        redirect_to profile_path
      else
        render :edit
      end
  end

  def destroy
    @expense.destroy
    redirect_to profile_path
  end

  def approve
     @expense.status = "Accepted"            # as soon as the owner approves a booking, the status changes to Accepted"
     @expense.save
     redirect_to profile_path
  end

  def reject
     @expense.status = "Rejected"           # as soon as the owner approves a booking, the status changes to Rejected"
     @expense.save
     redirect_to profile_path
  end

  def requested
     @expense.status = "Requested"
     @expense.save
     redirect_to new_expense_message_path(@expense)
  end

  private

  def find_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:amount, :date, :category, :sub_category, :status, :title, :description)
  end

end
