require 'test_helper'

class ScoutsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Scout.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Scout.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to scouts_url
  end

  def test_destroy
    scout = Scout.first
    delete :destroy, :id => scout
    assert_redirected_to scouts_url
    assert !Scout.exists?(scout.id)
  end
end
