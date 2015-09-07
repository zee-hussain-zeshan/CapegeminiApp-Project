class EnrolmentcsvsController < ApplicationController

	def enrolments_upload
	end

	def import1
		@f = params[:file]
		cookies[:enrolments_cookie] = @f.path
	end

	def import2
		@id = params[:course_id]
		@f  = File.read(cookies[:enrolments_cookie])
	end
end
