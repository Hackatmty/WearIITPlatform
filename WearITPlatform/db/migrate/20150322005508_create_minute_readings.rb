class CreateMinuteReadings < ActiveRecord::Migration
  def change
    create_table :minute_readings do |t|

      t.timestamps null: false
    end
  end
end
