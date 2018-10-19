class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @training_classes = TrainingClass.limit(3)
  end
end
