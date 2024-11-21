class CreateColumns < ActiveRecord::Migration[8.0]
  def change
    create_table :columns do |t|
      t.text :title
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
