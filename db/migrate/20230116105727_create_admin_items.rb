class CreateAdminItems < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_items do |t|

      t.string :genre, null: false
      t.text :description, null: false
      t.integer :price, null: false
      t.integer :stock, null: false, default: 0

      t.timestamps
    end
  end
end
