class PagesController < ApplicationController

	def index
		#sessions = Session.select(:id).where(module_id: @module_id)
		#@attends = Attend.where(session_id: sessions)
	end

	def dataView
		@attends = Attend.joins(:session).where("sessions.module_id" => @module_id)

	end 

	def attendance
		@module_idParam
		begin
			@module_idParam = params[:id]
		rescue
			@module_idParam = Course.first[:id]
		end
		@session = Session.where(id: @module_idParam)
	end

	def attends_processing
		@students = params[:students]
		@session = params[:session]
	end

	def chooseModule
		@userChoice = params[:id]
		@modules = Course.all
	end 

	def showStudentsByModule
		@userChoice = params[:id]
		@menuSelection = params[:collection][:id]
		# @userSelection
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


end
