class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :twitter_id
      t.date :date

      t.timestamps
    end
    add_index :incidents, :twitter_id
    add_index :incidents, :date
  end
end
