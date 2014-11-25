class CategorizationsController < ApplicationController

  def index
  @categorizations = Categorization.all
  end

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new
  end

end
