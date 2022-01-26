class Admin::AdminsController < Admin::Base
  def show
    @admin = Admin.find(1)
  end
end
