class AddDefaultToStatusExpenses < ActiveRecord::Migration[5.0]
  def up
      change_column_default :expenses, :status, "pending"
  end


end
