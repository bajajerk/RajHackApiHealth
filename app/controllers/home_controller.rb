class HomeController < ApplicationController
  def index
  	@p=Patient.first
  end
end
