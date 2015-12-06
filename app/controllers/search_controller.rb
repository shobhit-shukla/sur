class SearchController < ApplicationController
  skip_before_filter :authenticate_user!

	def index
		
	end

	def create
		redirect_to search_index_path
	end
end