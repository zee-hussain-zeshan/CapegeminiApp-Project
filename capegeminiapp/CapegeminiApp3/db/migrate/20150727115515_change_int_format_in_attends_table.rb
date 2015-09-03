class ChangeIntFormatInAttendsTable < ActiveRecord::Migration
  def change
  	change_table :attends do |t|
 	t.change :student_id, :string
	end
  end
end
