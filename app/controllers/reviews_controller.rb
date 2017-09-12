class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(:user_id => params[:user_id])
  end
  
  def create
    @review = Review.new
    @review.title = params[:review][:title]
    @review.content = params[:review][:content]
    @review.value = params[:review][:value]
    @review.save
    # @review = Review.create(params[:review])
    redirect_to '/reviews/index'
  end
  
  def new
  end
  
end
