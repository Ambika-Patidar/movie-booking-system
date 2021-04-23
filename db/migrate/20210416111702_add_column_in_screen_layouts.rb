class AddColumnInScreenLayouts < ActiveRecord::Migration[5.2]
  def change
    add_column :screen_layouts, :seat_number, :integer
  end
end
