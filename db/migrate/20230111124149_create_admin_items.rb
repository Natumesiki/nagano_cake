class CreateAdminItems < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_items do |t|
      t.text :genre
      t.string :title
      t.text :body
      t.integer :user_id
      t.text :description, null: false
      t.integer :price, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
