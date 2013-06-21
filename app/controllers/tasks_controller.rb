class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    sleep 1
    @incomplete_tasks = Task.where(:completed => false)
    @complete_tasks = Task.where(:completed => true)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.js # new.js.erb
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.create!(params[:task])

    respond_to do |format|
      format.html { redirect_to :tasks, notice: 'Task was successfully created.' }
      format.js # create.js.erb
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to :tasks, notice: 'Task was successfully updated.' }
        format.js # update.js.erb
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
end
