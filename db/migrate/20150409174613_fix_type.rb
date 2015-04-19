class FixType < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.change :lat, :float
      t.change :lng, :float
    end
  end
end
