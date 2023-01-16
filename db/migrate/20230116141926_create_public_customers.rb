class CreatePublicCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :public_customers do |t|

      t.timestamps
    end
  end
end
