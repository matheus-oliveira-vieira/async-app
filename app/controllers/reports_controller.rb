class ReportsController < ApplicationController
  def index
    @reports = Dir["public/reports/*"]
  end
   
  def create
    ReportsWorker.perform_async
    flash[:notice] = "Estamos processando seu relatório"
    redirect_to '/reports'
    end
  end