class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :name
      t.string :description
      t.integer :budget

      t.timestamps
    end
  end
end
