class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.belongs_to :mood, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
