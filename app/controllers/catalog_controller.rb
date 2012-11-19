class CatalogController < ApplicationController
  def index
    @projects = Project.order(:start_date)
  end
end
