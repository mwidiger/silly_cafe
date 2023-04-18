class FixIndexOnUserInOrders < ActiveRecord::Migration[7.0]
  def change
    # This solution wouldn't work in production with a lot of users (it was take forever!) but I can do
    # it here because I don't have many users in my db yet.
    remove_index :orders, name: "index_orders_on_user_id"
    add_index(:orders, [:user_id, :estimated_deliver_at, :created_at])
  end
end
