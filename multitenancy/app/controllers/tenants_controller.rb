class TenantsController < ApplicationController
  before_action :set_tenant, only: %i[ show edit update destroy ]
  before_action :authorize_member, only: %i[ show edit update destroy ]

  def index
    @tenants = current_user.tenants
  end


  def show
  end


  def new
    @tenant = Tenant.new
  end


  def edit
  end


  def create
    @tenant = Tenant.new(tenant_params)

    respond_to do |format|
      if @tenant.save
        @tenant.members.create(user: current_user, roles: { admin: true })
        format.html { redirect_to tenant_url(@tenant), notice: "Tenant was successfully created." }
        format.json { render :show, status: :created, location: @tenant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        format.html { redirect_to tenant_url(@tenant), notice: "Tenant was successfully updated." }
        format.json { render :show, status: :ok, location: @tenant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @tenant.destroy!

    respond_to do |format|
      format.html { redirect_to tenants_url, notice: "Tenant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def authorize_member
    return redirect_to root_path, alert: "You are not a member" unless @tenant.users.include? current_user
  end

    def set_tenant
      @tenant = Tenant.find(params[:id])
    end


    def tenant_params
      params.require(:tenant).permit(:name)
    end
end
