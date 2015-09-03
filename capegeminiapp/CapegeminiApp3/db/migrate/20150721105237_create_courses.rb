class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses, id: false do |t|
      t.string :module_id
      t.string :module_name
    end
    execute "ALTER TABLE courses ADD PRIMARY KEY (module_id);"
  end
end
