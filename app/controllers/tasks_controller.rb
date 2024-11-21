class TasksController < ApplicationController
  def sort
    task = Task.find(params[:id])
    task.update(row_order_position: params[:row_order_position], column_id: params[:column_id])
    head :no_content
  end
end
