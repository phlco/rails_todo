class Todo < ActiveRecord::Base

def index
  @todos = Todo.all?
end

def new
end

def create
  name = params[:name]
  todo = Todo.new
  todo.name = name
  todo.save
  redirect_to '/todos'
end


end
