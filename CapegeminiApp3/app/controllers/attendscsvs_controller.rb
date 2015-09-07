class AttendscsvsController < ApplicationController
	def attends_upload
	end

	def import
		@f=params[:file]
	end

end
