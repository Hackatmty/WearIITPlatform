class CreateDailyReadings < ActiveRecord::Migration
  def change
    create_table :daily_readings do |t|

      t.timestamps null: false
    end
  end
end
