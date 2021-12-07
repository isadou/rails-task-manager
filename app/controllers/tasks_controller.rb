class TasksController < ApplicationController

  before_action :set_task, except: [:index, :new, :create]
  # affiche tous les records de la table

  def index
   @tasks = Task.all
  end

  def show
    # utilise la methode set_task pour afficher un record avec l'ID indiqué
  end

  def new
    @task = Task.new #=> affichage formulaire pour compléter les champs new record
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to tasks_path #=> redirige vers l'affichage liste taches
    else
      render :new
    end
  end

  def edit
    #=> pour afficher toutes les taches la methode set_task et task_params
  end

  def update
    @task.update(task_params)

    if @task.save
      redirect_to tasks_path #=> redirige vers l'affichage liste taches
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path #=> pour afficher toutes les taches la methode set_task et task_params
  end


  private # ça va nous servir plus tard

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
