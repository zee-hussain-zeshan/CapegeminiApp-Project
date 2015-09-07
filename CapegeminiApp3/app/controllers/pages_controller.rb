class PagesController < ApplicationController

	def index
		@module_id
		begin
			@module_id = params[:module][:id]
		rescue
			@module_id = Course.first[:id]
		end
		#sessions = Session.select(:id).where(module_id: @module_id)
		#@attends = Attend.where(session_id: sessions)

		@attends = Attend.joins(:session).where("sessions.module_id" => @module_id)
	end

	def showStudentsByModule
		@moduleParam
		begin
			@moduleParam = params[:module][:id]
		rescue
			@moduleParam = Course.first[:id]
		end
		@module = Course.find(@moduleParam)
		@enrolments = Enrolment.where(module_id: @moduleParam)
	end

	def showSessionsByModule
		@moduleParam
		begin
			@moduleParam = params[:module][:id]
		rescue
			@moduleParam = Course.first[:id]
		end
		@module = Course.find(@moduleParam)
		@sessions = Session.where(module_id: @moduleParam)
	end

	def attendance
		#@module_idParam
		#begin
		#	@module_idParam = params[:module][:id]
		#rescue
		#	@module_idParam = Course.first[:id]
		#end
		#@module = Course.find(@module_idParam)
		@module_idParam = params[:session_id]
		@session = Session.where(id: @module_idParam)
	end

	def attends_processing
		@students = params[:students]
		@session = params[:session]
	end



end
