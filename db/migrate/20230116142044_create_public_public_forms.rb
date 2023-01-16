class CreatePublicPublicForms < ActiveRecord::Migration[6.1]
  def change
    create_table :public_public_forms do |t|

      t.timestamps
    end
  end
end
