class Task < ApplicationRecord
  include RankedModel
  belongs_to :project
  belongs_to :column

  ranks :row_order, with_same: :column_id
end
