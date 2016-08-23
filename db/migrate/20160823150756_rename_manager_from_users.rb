class RenameManagerFromUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :manager, :is_manager
  end
end
