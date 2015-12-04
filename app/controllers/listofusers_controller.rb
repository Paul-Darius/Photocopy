class ListofusersController < ApplicationController
  before_action :authenticate_user!
  before_filter :is_admin?

  def is_admin?
    if current_user.admin?
      true
    else
      false
    end
  end

  def index
    @users = User.all
  end

  def purchasesofuser
    @purchases = Purchase.where("user_id =" + params[:id].to_s)
  end

  def banuser
    User.find(params[:id]).destroy
  end

  def statisticsuser
    @users = User.all
  end

end
