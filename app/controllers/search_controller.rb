class SearchController < ApplicationController
  skip_before_filter :authenticate_user!

	def index
    byebug
	end

	def create
		redirect_to search_index_path
  end

  private

  def search_params
    params.require(:search).permit(:region, :instrument_id)
  end
end