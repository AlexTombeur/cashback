class ExpensesController < ApplicationController

  before_action :find_expense, only: [:show, :edit, :update, :destroy, :approve, :reject, :info]

  def index
    @expenses = current_user.expenses
  end

  def show
  end

  def new
    @expense = Expense.new
    respond_to do |format|
      format.html {}
      format.js {
       @category = params[:category]
       @sub_categories = set_sub_categories
     }

   end
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
  @category = @expense.category
  @sub_categories = set_sub_categories
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
     @expense.status = "valid"            # as soon as the owner approves a booking, the status changes to Accepted"
     @expense.save
     redirect_to profile_path
   end

   def reject
     @expense.status = "rejected"           # as soon as the owner approves a booking, the status changes to Rejected"
     @expense.save
     redirect_to profile_path
   end

   def info
     @expense.status = "info"
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

  def set_sub_categories
      case @category
      when "car" then ["fuel", "parking", "insurance", "repair", "maintenance", "cleaning"]
      when "hotel" then ["night", "day", "quicky"]
      when "food" then ["breakfeast", "lunch", "dinner"]
      when "travel" then ["flight", "bus", "metro", "other"]
      when "phone" then ["local call", "international call"]
      when "other" then [""]
      end
  end
end
