class Backoffice::CategoriesController < BackofficeController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to backoffice_categories_path
      flash[:notice] = "Categoria \"#{@category.description}\" salva com sucesso"
    else
      render "new"
    end
  end

  def edit

  end

  private

  def category_params
    params.require(:category).permit(:description)
  end
end
