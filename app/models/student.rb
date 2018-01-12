
class Student < ApplicationRecord

# attr_accessor :firstname, :lastname, :email , :age,:contact, :address, :bloodgroup, :sex, :city, :dob

 has_many :guardian_details,dependent: :destroy ,inverse_of: :student
accepts_nested_attributes_for :guardian_details, reject_if: :all_blank, allow_destroy: true

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


def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end


def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Student.create! row.to_hash
  end
end

end


 