class ColumnsController < ApplicationController
  def sort
    column = Column.find(params[:id])
    column.update!(row_order_position: params['rowOrderPosition'])
    head :no_content
  end
end
