class TreatmentsController < ActionController::API

  def new
        newTreatment=Treatment.new
        description="Symtoms:-"


         s1= params['s1'].to_i
         
        if (s1>0)
          description=description+" Headache,"
        end

         s2= params['s2'].to_i
        if (s2>0)
          description=description+"Coughing,"
        end

         s3= params['s3'].to_i
        if (s3>0)
          description=description+'Sneezing,'
        end


       s4= params['s4'].to_i
        if (s4>0)
          description=description+'Running Nose, '
        end


       s5= params['s5'].to_i
        if(s5>0)
          description=description+'Body Pain, '
        end


         s6= params['s6'].to_i
        if (s6>0)
          description=description+'Stomach Ache, '
        end


         s7= params['s1'].to_i
        if (s7>0)
          description=description+'Chest Pain, '
        end


        s8=params['s8'].to_i
        if(s8>0)
          description=description+'Vomiting, '
        end

        temp=params['temp']
        description=description + "Temperature is #{temp}    "

        pulse=params['pulse']
        description=description + "Pulse  is #{pulse}"


        newTreatment.description=description
        newTreatment.isDiagnosed=params["isdiagnosed"]
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

