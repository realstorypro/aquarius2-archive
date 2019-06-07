class AddRoles < ActiveRecord::Migration[6.0]
  def change
    create_table "roles", force: :cascade do |t|
      t.string "name"
      t.string "resource_type"
      t.bigint "resource_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
      t.index ["name"], name: "index_roles_on_name"
      t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
    end

    create_table "users_roles", id: false, force: :cascade do |t|
      t.bigint "user_id"
      t.bigint "role_id"
      t.index ["role_id"], name: "index_users_roles_on_role_id"
      t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
      t.index ["user_id"], name: "index_users_roles_on_user_id"
    end
  end
end
