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
    @expense.status = "Valid"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

  def reject
    @expense = Expense.find(params[:id])
    @expense.status = "Rejected"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

  def requeste
    @expense = Expense.find(params[:id])
    @expense.status = "Info requested"
    @expense.save!
    redirect_to subordinates_expenses_path
  end

end

