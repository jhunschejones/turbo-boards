class AddRowOrderToColumnsAndTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :columns, :row_order, :integer
    add_column :tasks, :row_order, :integer
  end
end
