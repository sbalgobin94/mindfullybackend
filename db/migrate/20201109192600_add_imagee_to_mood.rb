class AddImageeToMood < ActiveRecord::Migration[6.0]
  def change
    add_column :moods, :img_url, :string
  end
end
