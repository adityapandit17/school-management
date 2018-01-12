json.extract! student, :id, :firstname, :lastname, :email, :age, :contact, :address, :bloodgroup, :sex, :city, :dob, :created_at, :updated_at
json.url student_url(student, format: :json)
