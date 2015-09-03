class CreateTakes < ActiveRecord::Migration
  def change
    create_table :takes do |t|
      t.integer :assessment_id
      t.string :student_id

      t.timestamps null: false
    end
  end
end
