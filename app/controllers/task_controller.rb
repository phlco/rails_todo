class TaskController < ApplicationController
	def index
		@tasks = Task.all
	end

	def new

	end
end