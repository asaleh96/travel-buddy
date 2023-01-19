class CreateUsersTrips < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :trips, table_name: :users_trips do |t|
      t.index :user_id
      t.index :trip_id
    end
  end
end
