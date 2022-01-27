class Admin::SessionsController < Admin::Base
  def create
    admin = Admin.find_by(login_id: params[:admin_login_id])
    if admin&.authenticate(params[:admin_password])
      cookies.signed[:admin_id] = {value: admin.id}
      redirect_to :admin_root
    else
      flash.alert = "ログインIDとパスワードが一致しません"
      redirect_to :root
    end
  end

  def destroy
    cookies.delete(:admin_id)
    redirect_to :root
  end
end
