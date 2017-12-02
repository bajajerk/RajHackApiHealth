json.extract! patient, :id, :name, :aadharnumber, :age, :weight, :phonenumber, :gender, :allergy, :created_at, :updated_at
json.url patient_url(patient, format: :json)
