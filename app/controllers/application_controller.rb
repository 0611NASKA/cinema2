class ApplicationController < ActionController::Base
  before_action :update_expiration_time
  
  private def current_member
    Member.find_by(id: cookies.signed[:member_id]) if cookies.signed[:member_id]
  end
  helper_method :current_member

  class LoginRequired < StandardError; end
  class Forbidden < StandardError; end

  private def login_required
    raise LoginRequired unless current_member
  end

  private def update_expiration_time
    cookies.signed[:member_id] =
    { value: cookies.signed[:member_id], expires: 10.minutes.from_now }
  end

end
