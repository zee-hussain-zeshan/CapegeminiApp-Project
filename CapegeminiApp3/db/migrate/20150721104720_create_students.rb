class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students, id: false do |t|
      t.string :student_id
      t.string :firstname
      t.string :surname
    end
    execute "ALTER TABLE students ADD PRIMARY KEY (student_id);"
  end
end
