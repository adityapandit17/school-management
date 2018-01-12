class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
