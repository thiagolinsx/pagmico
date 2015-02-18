class TodosController < ApplicationController
  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @todos }
    end
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    @todo = Todo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @todo }
    end
  end

  # GET /todos/new
  # GET /todos/new.json
  def new
    @todo = Todo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @todo }
    end
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(params[:todo])

    respond_to do |format|
      if @todo.save
        flash[:success] = "Todo was successfully created."
        format.html { redirect_to @todo }
        format.json { render :json => @todo, :status => :created, :location => @todo }
      else
        flash[:alert] = 'There was a problem creating the Todo.'
        format.html { render :action => "new" }
        format.json { render :json => @todo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
    @todo = Todo.find(params[:id])

    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        flash[:success] = "Todo was successfully updated."
        format.html { redirect_to @todo }
        format.json { head :no_content }
      else
        flash[:alert] = 'There was a problem updating the Todo.'
        format.html { render :action => "edit" }
        format.json { render :json => @todo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      flash[:success] = "Todo was successfully destroyed."
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
  end
end
