class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
    t.date :date
  	t.string :module_id, references: [:Course, :module_id]
    end
  end
end
