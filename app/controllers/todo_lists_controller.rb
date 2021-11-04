class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit, :update, :destroy]

  def index
    @todo_lists = TodoList.all
  end

  # GET /todo_lists/1
  def show
  end

  # GET /todo_lists/new
  def new
    @todo_list = TodoList.new
  end

  # GET /todo_lists/1/edit
  def edit
  end

  # POST /todo_lists
  def create
    @todo_list = TodoList.new(todo_list_params)
    @todo_list.save
  end

  # PATCH/PUT /todo_lists/1
  def update
    @todo_list.update(todo_list_params)
  end

  # DELETE /todo_lists/1
  def destroy
    @todo_list.destroy
  end
  private

  def set_todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:name)
  end
end
