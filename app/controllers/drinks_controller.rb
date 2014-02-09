class DrinksController < ApplicationController

	def index
		@drinks = Drink.all
	end


  def refresh
    binding.pry
    GoogleDriveDrinkComparer.new.save_drinks_from_spreadsheet
    @drinks = Drink.all
    @total_new_drinks = Drink.count - params["drink_count"].to_i
    render json: @total_new_drinks
  end
end
