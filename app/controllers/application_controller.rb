# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  helper_method :current_user_session, :current_user, :is_admin
  filter_parameter_logging :password, :password_confirmation
  before_filter :require_user, :get_cms_page

  private

    def get_cms_page
      controller = self.controller_name.titleize
      # Admin user should not need to differentiate between edit / update and new / create
      action = case self.action_name
      when "create"
        "New"
      when "update"
        "Edit"
      else
        self.action_name.titleize
      end
      @cms_page = CmsPage.get([controller,action].join(": "))
    end

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end
    
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end
    
    def require_user
      unless current_user
        store_location
        flash[:notice] = I18n.t('flash.user.login.required')
        redirect_to new_user_session_url
        return false
      end
    end

    def require_no_user
      if current_user
        store_location
        flash[:notice] = I18n.t('flash.user.logout.required')
        redirect_to account_url
        return false
      end
    end

    def require_admin
      unless is_admin
        flash[:notice] = I18n.t('flash.user.admin.required')
        redirect_to root_path
      end
    end

    def is_admin
      current_user.admin
    end
    
    def store_location
      session[:return_to] = request.request_uri
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end
