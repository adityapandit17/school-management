class Student < ApplicationRecord
 has_many :guardian_details

 validates :firstname, presence: true
 validates :lastname, presence: true
 validates :email, presence: true
 validates :age, presence: true
 validates :contact, presence: true
 validates :address, presence: true
 validates :bloodgroup, presence: true
 validates :sex, presence: true
 validates :city, presence: true
 validates :dob, presence: true

end
