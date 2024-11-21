class Column < ApplicationRecord
  include RankedModel
  belongs_to :project
  has_many :tasks

  ranks :row_order
end
