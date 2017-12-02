class PatientsController < ActionController::API
  

 def new
        newPatient=Patient.new
        # puts "hddHDHJDHJHJHDDSHDHSDJDS"
        newPatient.name = params["name"]
        # newPatient.address = params["address"]
        newPatient.age = params["age"]
        newPatient.phonenumber= params["phonenumber"] 
        # newPatient.height=params["height"]
        newPatient.weight=params["weight"]
        newPatient.gender=params["gender"]
        newPatient.aadharnumber=params["aadharnumber"]
        newPatient.allergy=params["allergy"]

        newPatient.save

        data={}
        data["message"]="New Patient #{newPatient.name}  created"
        render json:data
  end




end
