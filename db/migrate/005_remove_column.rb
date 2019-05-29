class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :plans, :location_id
  end
end
