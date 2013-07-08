class TodosController < ApplicationController

  def index
    @todos = TodoTable.all
  end

  def new

  end
end