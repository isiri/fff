class WelcomeController < ApplicationController
  skip_before_filter :require_user

  def index
  end

end
