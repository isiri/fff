require 'test_helper'

class UserSessionsControllerTest < ActionController::TestCase
  context "on get new" do
    setup do
      get :new
    end
    should_respond_with :success
    should_render_template :new
  end

  should "create user session" do
    current_user = User.make
    post :create, :user_session => { :login => current_user.email, :password => "password" }
    user_session = UserSession.find
    assert_equal current_user, user_session.user
    assert_redirected_to account_path
  end

  should "destroy user session" do
    current_user = User.make
    UserSession.create(current_user)
    delete :destroy
    assert_nil UserSession.find
    assert_redirected_to new_user_session_path
  end
end
