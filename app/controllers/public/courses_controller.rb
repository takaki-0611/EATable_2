class Public::CoursesController < ApplicationController
  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def courses_params
    params.require(:course).permit(:name, :price, :is_booked, :rest_id)
  end
end
