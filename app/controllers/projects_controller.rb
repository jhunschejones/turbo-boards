class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
    @columns = @project.columns.rank(:row_order)
  end
end
