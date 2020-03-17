class HomeController < ApplicationController
  before_action :forbid_login_user, {only: [:top]}

  def top
  end
  def howto
  end
  def login
  end
  def new
  end
  def signup
  end
  def write
  end

end
