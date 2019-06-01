class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.with_full_access
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to backoffice_admins_path ,notice: "O administrador \"#{@admin.email}\" foi salvo com sucesso"
    else
      render :new
    end
  end

  def edit
  end

  def update
    password = params[:admin][:password]
    password_confirmation = params[:admin][:password_confirmation]

    if password.blank? && password_confirmation.blank?
      params[:admin].delete(:password)
      params[:admin].delete(:password_confirmation)
    end

    if @admin.update(admin_params)
      redirect_to backoffice_admins_path,notice: "O administrador \"#{@admin.email}\" foi salvo com sucesso"
    else
      render :edit
    end
  end

  def destroy
    email = @admin.email
    
    if email == current_admin.email
      redirect_to backoffice_admins_path, notice: "Você não pode remover seu próprio cadastro"
    else
      @admin.destroy
      if @admin.destroyed?
        redirect_to backoffice_admins_path, notice: "Administrador excluído com sucesso"
      else
        redirect_to backoffice_admins_path, notice: "Não foi possível excluír este administrador"
      end
    end
  end

  private 

  def admin_params
    params.require(:admin).permit(:email, :password,:password_confirmation, :name)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
