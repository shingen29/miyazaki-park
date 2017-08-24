class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
  end
  
  def create
    @review = Review.new
    @review.title = params[:review][:title]
    @review.content = params[:review][:content]
    @review.value = params[:review][:value]

    @review.save
    redirect_to '/reviews/index'
  end
end
