class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.string :module_id
      t.string :student_id
    end
  end
end
