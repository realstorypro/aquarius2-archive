class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :help, :boolean
    add_column :users, :advanced, :boolean
  end
end
