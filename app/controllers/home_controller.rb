class HomeController < ApplicationController

	 protect_from_forgery with: :exception


	id=0
  def index
  	@treatments = Treatment.where(isDiagnosed: false)
  	@patients=Patient.all

  end


  def profile

  	patient= Patient.find_by_id(params[:patient_id])
  	id=params[:patient_id]
  	    # return redirect_to '/profilepage'

  	end


  	def profilepage
  		@patient=Patient.find_by_id(id)
  	end


end
