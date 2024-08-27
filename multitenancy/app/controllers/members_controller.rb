class MembersController < AuthorizedController
  def index
    @member = @current_tenant.members
  end

  def invite
  # binding.b
  email = params[:email]
  return redirect_to tenant_members_path(@current_tenant), alert: "NO email provided" if email.blank?
  user = User.find_by(email:) || User.invite!({ email: }, current_user)
  return redirect_to tenant_members_path(@current_tenant), alert: "User/email invalid" unless user.valid?
  user.members.find_or_create_by(tenant: @current_tenant, roles: { admin: false, editor: false })
  redirect_to tenant_members_path(@current_tenant), notice: "#{email} invited"
  end
end
