class CreateGuardianDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :guardian_details do |t|
      t.string :name
      t.string :contact
      t.string :relation
      t.string :address
      t.string :email
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :qualification
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
