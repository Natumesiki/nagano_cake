class CreatePublicOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :public_orders do |t|

      t.timestamps
    end
  end
end
