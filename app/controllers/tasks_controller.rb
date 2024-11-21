class TasksController < ApplicationController
  def sort
    task = Task.find(params[:id])
    task.update!(
      row_order_position: params['rowOrderPosition'],
      column_id: params['newColumnId']
    )
    head :no_content
  end
end
