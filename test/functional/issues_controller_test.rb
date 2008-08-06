require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_issue
    assert_difference('Issue.count') do
      post :create, :issue => { }
    end

    assert_redirected_to issue_path(assigns(:issue))
  end

  def test_should_show_issue
    get :show, :id => issues(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => issues(:one).id
    assert_response :success
  end

  def test_should_update_issue
    put :update, :id => issues(:one).id, :issue => { }
    assert_redirected_to issue_path(assigns(:issue))
  end

  def test_should_destroy_issue
    assert_difference('Issue.count', -1) do
      delete :destroy, :id => issues(:one).id
    end

    assert_redirected_to issues_path
  end
end
