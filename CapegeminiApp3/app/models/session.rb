class Session < ActiveRecord::Base
	belongs_to :course
	has_many :attends, :dependent => :delete_all

	validates_uniqueness_of :date, :scope => [:module_id], message: " - A session for this module already exists on the chosen date"
end
