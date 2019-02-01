class GamesController < ApplicationController
	helper_method :params
	def index
		@games = Game.all
	end

	def show
		@user = current_user
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(games_params)
		@game.reviews.first.user_id = current_user.id
		if @game.save
			redirect_to '/games'
		else
			render :new
		end
	end


	def topfive
		@games = Game.all.sort_by {|game| game.average_rating}.reverse.take(5)
	end
	
private
	def games_params
		params.require(:game).permit(:name, :release_year, console_ids:[], reviews_attributes: [:content, :rating])
	end

end
