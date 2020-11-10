class AddNotesToLog < ActiveRecord::Migration[6.0]
  def change
    add_column :logs, :notes, :text
  end
end
