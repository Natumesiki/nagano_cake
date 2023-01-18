class CreateAdminBases < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_bases do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.string :genre
      t.integer :user_id

      t.timestamps
    end
  end
end
