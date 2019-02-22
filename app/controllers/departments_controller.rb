class DepartmentController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  
  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @department = department.new(department_params)
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def update
    if @department.update(department_params)
<<<<<<< HEAD
      redirect_to department_path
=======
      redirect_to department_path(@department)
>>>>>>> 7355fd5e56c1234d8c9707eb5a6b6b70aa318997
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private
    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.require(:department).permit(:name)
    end
end
