class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
