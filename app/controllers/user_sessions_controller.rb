class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
 
  def new
    @user_session = UserSession.new
  end
 
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = I18n.t('flash.user.login.success')
      redirect_back_or_default url_for(:controller => 'welcome', :action => 'logged_in_index')
    else
      render :action => :new
    end
  end
 
  def destroy
    current_user_session.destroy
    flash[:notice] = I18n.t('flash.user.logout.success')
    redirect_back_or_default new_user_session_url
  end
end
