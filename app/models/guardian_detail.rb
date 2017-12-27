class GuardianDetail < ApplicationRecord
  belongs_to :student

 validates :name, presence: true
 validates :contact, presence: true
 validates :relation, presence: true
 validates :address, presence: true
 validates :email, presence: true
 validates :city, presence: true
 validates :state, presence: true
 validates :zipcode, presence: true
 validates :qualification, presence: true
 validates :student_id, presence: true


end
