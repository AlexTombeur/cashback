class Subordinates::ExpensesController < ApplicationController
  def index
        @expenses = []
        current_user.subordinates.each do |subordinate|
          @expenses << subordinate.expenses
          end
        @expenses.flatten!
  end

  def show
  end

  def accept
    @expense = Expense.find(params[:id])
    @expense.status = "valid"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

  def reject
    @expense = Expense.find(params[:id])
    @expense.status = "rejected"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

  def requeste
    @expense = Expense.find(params[:id])
    @expense.status = "info"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

end
