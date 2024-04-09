class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @projects = Project.all
    @projects = @projects.where(category: params[:category]) if params[:category].present?
    @categories = Project.distinct.pluck(:category)
  end
end
