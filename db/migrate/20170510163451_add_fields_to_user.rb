class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nom, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :description, :string
    add_column :users, :adresse, :string
    add_column :users, :phone, :integer
  end
end
