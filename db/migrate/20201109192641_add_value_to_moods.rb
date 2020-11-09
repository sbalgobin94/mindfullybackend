class AddValueToMoods < ActiveRecord::Migration[6.0]
  def change
    add_column :moods, :value, :integer
  end
end
