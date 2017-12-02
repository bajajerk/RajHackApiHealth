class TreatmentsController < ActionController::API

  def new
        newTreatment=Treatment.new
        newTreatment.description = params["description"]
        # newTreatment.isdiagnosed=params["isdiagnosed"]
        aadharnumber = params["aadharnumber"]
        if (Patient.find_by_aadharnumber(aadharnumber))
          p=Patient.find_by_aadharnumber(aadharnumber)
          newTreatment.patient_id=p.id        
          newTreatment.save

          data={}
          data["message"]="New Treatment  #{newTreatment.description}  created"
          render json:data

        else
          data={}
          data["message"]="Some problem is the server , Contact Mayank"
       end


  end

end

