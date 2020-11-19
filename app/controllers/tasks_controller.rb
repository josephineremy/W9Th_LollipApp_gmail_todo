class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("created_at ASC")
  end

  def create
  @task = Task.create(task_params)
  respond_to do |format|
  format.html { redirect_to root_path }
  format.js { }
  end
end
def edit
  @task = Task.find(params[:id])
  @categories = Category.all

end

def update
    if params[:origin] == "checkbox" then
      @task = Task.find(params[:id])
      (!params[:task])? (@task.update(status: false)):(@task.update(status: true))
      respond_to do |format|
        format.html {redirect_to root_path }
        format.js {}
      end
    else
      @task = Task.find(params[:id])
      @task.update(task_params)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
    end
  end


def index
  @tasks = Task.all
end

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  respond_to do |format|
    format.html {redirect_to root_path}
    format.js {}
  end
end

private

def task_params
  params.permit(:title, :deadline, :status)
end

end
