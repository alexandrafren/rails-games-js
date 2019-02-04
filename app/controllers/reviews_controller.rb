class ReviewsController < ApplicationController

  def index
    @game = Game.find(params[:game_id])
     respond_to do |format|
	format.html {render :index}
	format.json {render json:@game}
     end
  end

  def new
    @review = Review.new(game_id: params[:game_id])
  end

  def create
    @review = Review.new(rating: params[:review][:rating], game_id: params[:review][:game_id], content: params[:review][:content], user_id: session[:user_id])
    if @review.valid?
      @review.user_id = current_user.id
      @review.save
      redirect_to '/games'
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:rating, :content, :game_id)
  end

end
