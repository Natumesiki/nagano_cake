class CreateAdminOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_orders do |t|

      t.timestamps
    end
  end
end
