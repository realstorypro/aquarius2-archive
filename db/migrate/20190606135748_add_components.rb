class AddComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.string :name
      t.boolean :enabled

      t.timestamps
    end
  end
end
