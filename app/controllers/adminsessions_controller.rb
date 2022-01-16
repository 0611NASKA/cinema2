class AdminsessionsController < ApplicationController
  def create
    admin = Admin.find_by(login_id: params[:login_id])
    if admin&.authenticate(params[:password])
      cookies.signed[:admin_id] = {
        :value => admin.id,
        :expires => 10.minutes.from_now,
      }
    else
      flash.alert = "ログインIDとパスワードが一致しません"
    end
    redirect_to :root
  end

  def destroy
    cookies.delete(:admin_id)
    redirect_to :root
  end
end
