class CoursesController < ApplicationController
  def index
    @courses = Course.order('priority ASC').limit(3)
    @training_classes = TrainingClass.limit(3)
  end
end
