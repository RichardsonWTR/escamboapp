class Backoffice::AdminsController < BackofficeController
  before_action :set_admin, only: [:edit, :update, :destroy]
  # Ensures that Pundit authorization and scope are being used
  after_action :verify_authorized, only: [:new,:destroy]
  after_action :verify_policy_scoped, only: :index

  def index
    @admins = policy_scope Admin
  end

  def new
    @admin = Admin.new
    authorize @admin
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to backoffice_admins_path ,notice:  t('messages.saved.m',model: %Q(#{@admin.model_name.human.downcase} "#{@admin.email}"))
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      redirect_to backoffice_admins_path,notice: t('messages.updated.m',model: %Q(#{@admin.model_name.human.downcase} "#{@admin.email}"))
    else
      render :edit
    end
  end

  def destroy
    email = @admin.email
    authorize @admin
    if email == current_admin.email
      redirect_to backoffice_admins_path, notice: t('messages.you_cant_remove_yourself')
    else
      @admin.destroy
      if @admin.destroyed?
        redirect_to backoffice_admins_path, notice: t('messages.destroyed_with',model: @admin.model_name.human)
      else
        redirect_to backoffice_admins_path, notice: t('messages.non_authorized_action')
      end
    end
  end

  private 

  def admin_params
    password = params[:admin][:password]
    password_confirmation = params[:admin][:password_confirmation]

    if password.blank? && password_confirmation.blank?
      # The except! command below removes the password keys from the params[:admin] hash.
      params[:admin].except!(:password, :password_confirmation)
    end

    params.require(:admin).permit(policy(@admin).permitted_attributes)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
