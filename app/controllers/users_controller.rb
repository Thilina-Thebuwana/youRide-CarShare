class UsersController < ApplicationController
before_action :authorize_admin
#    , except: [:index,:show]
  def index
      @user = User.all
  end
end
