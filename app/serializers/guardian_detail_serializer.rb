class GuardianDetailSerializer < ActiveModel::Serializer
  attributes :id , :name, :contact ,:relation ,:address,:email,:city,:state,:zipcode ,:qualification ,:student_id
end
