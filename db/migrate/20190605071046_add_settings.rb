class AddSettings < ActiveRecord::Migration[6.0]
  def change
    create_table 'settings', force: :cascade do |t|
      t.json 'payload'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
      t.string 'type'
    end
  end
end
