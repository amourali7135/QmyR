class SearchController < ApplicationController
  def index
    if params[:query].present?
      personals = Personal.search(params[:query]) && Businesses = Business.search(params[:query])
      #  else
      # @gifts = Gift.all
    end
  end
end