class Subordinates::ExpensesController < ApplicationController
  def index
        @expenses = current_subordinates.expenses
  end

  def show
  end
end
