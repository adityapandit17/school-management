json.extract! guardian_detail, :id, :name, :contact, :relation, :address, :email, :city, :state, :zipcode, :qualification, :student_id, :created_at, :updated_at
json.url guardian_detail_url(guardian_detail, format: :json)
