class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :age
      t.string :contact
      t.string :address
      t.string :bloodgroup
      t.string :sex
      t.string :city
      t.date :dob

      t.timestamps
    end
  end
end
