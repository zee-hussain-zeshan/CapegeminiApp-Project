class EnrolmentcsvsController < ApplicationController

	def enrolments_upload
	end

	def import1
		@name =  "ChangeThisName.csv"
    	directory = "#{Rails.root}/public/data"
    	@path = File.join(directory, @name)
    	# write the file
    	File.open(@path, "wb") { |f| f.write(params[:file].read) }
	end

	def import2
		@course_id = params[:course_id]
		@file_path = params[:file_path]
	end
end
