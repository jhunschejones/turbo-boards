class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.text :title
      t.text :body
      t.references :project, null: false, foreign_key: true
      t.references :column, null: false, foreign_key: true

      t.timestamps
    end
  end
end
