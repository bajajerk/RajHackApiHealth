class TreatmentsController < ActionController::API

  def new
        newTreatment=Treatment.new
        description="Symtoms:-"


         s1= params['s1']
        if (s1==1)
          description=description+" Headache,"
        end

         s2= params['s2']
        if (s2==1)
          description=description+"Coughing,"
        end

         s3= params['s3']
        if (s3==1)
          description=description+'Sneezing,'
        end


       s4= params['s4']
        if (s4==1)
          description=description+'Running Nose, '
        end


       s5= params['s5']
        if(s5==1)
          description=description+'Body Pain, '
        end


         s6= params['s6']
        if (s6==1)
          description=description+'Stomach Ache, '
        end


         s7= params['s1']
        if (s7==1)
          description=description+'Chest Pain, '
        end


        s8=params['s8']
        if(s8==1)
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

