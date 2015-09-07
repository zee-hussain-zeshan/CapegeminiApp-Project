class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :student #student_id
      t.references :session #session_id
    end
  end
end
