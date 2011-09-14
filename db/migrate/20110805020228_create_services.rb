class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.integer :km
      t.date :date
      t.string :oil
      t.integer :car_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
