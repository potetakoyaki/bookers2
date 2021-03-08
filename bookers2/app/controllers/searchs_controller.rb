class SearchsController < ApplicationController
  def search
    @model = params["search"]["model"]
    @value = params["search"]["value"]
    @how = params["search"]["how"]
    @dates = search_for(@model, @value, @how)
  end
  
  private
  
  
end
