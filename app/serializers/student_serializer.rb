class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstname , :lastname ,:email , :age , :contact , :address , :bloodgroup , :sex , :city ,:dob
end
