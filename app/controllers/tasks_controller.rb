class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new()
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update()
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def completed?
    @task.completed
  end

  def completed!
    @task.completed = !@task.completed
  end

end
