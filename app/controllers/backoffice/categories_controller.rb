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
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to backoffice_categories_path
      flash[:notice] = "Categoria atualizada com sucesso"
    else
      render "edit"
    end
  end

  private

  def category_params
    params.require(:category).permit(:description)
  end
end
