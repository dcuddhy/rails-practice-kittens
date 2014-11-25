class CategorizationsController < ApplicationController

  def index
  @categorizations = Categorization.all
  end

  def new
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = Categorization.new
  end

  def create
    @kitten = Kitten.find(params[:kitten_id])
    @categorization = @kitten.categorizations.new(params.require(:categorization).permit(:kitten_id, :category_id))
    if @categorization.save
    redirect_to root_path, notice: "was successfully added"
    else
      render :new
    end
  end

end
