class Backoffice::CategoriesController < BackofficeController
  def index
    @categories = Category.all
  end

  def new
  end

  def edit
  end

end
