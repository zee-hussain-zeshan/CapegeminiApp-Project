class DropSessionsTable < ActiveRecord::Migration
  def up
    drop_table :sessions
  end

  def down
   create_table :sessions, id: false do |t|
      t.date :date
      t.references :course #module_id
  	end
  end
end
