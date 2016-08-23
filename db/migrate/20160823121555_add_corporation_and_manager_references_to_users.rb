class AddCorporationAndManagerReferencesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :manager_id, :integer
    add_foreign_key :users, :users, column: :manager_id

    add_reference :users, :corporation, foreign_key: true, index: true
  end
end
