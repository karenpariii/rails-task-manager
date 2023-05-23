class TasksController < ApplicationController
  # méthode pour voir toutes les tasks. Appel sur la classe Task
  def index
    @tasks = Task.all
  end

  # méthode new pour creer une task. Appel sur la classe Task
  # new route doit être avant la show
  def new
    @task = Task.new
  end

  # méthode pour voir une task en particulier. Appel sur la classe Task
  def show
    @task = Task.find(params[:id])
  end

  #méthode pour poster le form. Appel sur la classe Task
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path, status: :see_other
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
