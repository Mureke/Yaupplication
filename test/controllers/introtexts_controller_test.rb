require 'test_helper'

class IntrotextsControllerTest < ActionController::TestCase
  setup do
    @introtext = introtexts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:introtexts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create introtext" do
    assert_difference('Introtext.count') do
      post :create, introtext: { enddate: @introtext.enddate, startdate: @introtext.startdate, text: @introtext.text }
    end

    assert_redirected_to introtext_path(assigns(:introtext))
  end

  test "should show introtext" do
    get :show, id: @introtext
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @introtext
    assert_response :success
  end

  test "should update introtext" do
    patch :update, id: @introtext, introtext: { enddate: @introtext.enddate, startdate: @introtext.startdate, text: @introtext.text }
    assert_redirected_to introtext_path(assigns(:introtext))
  end

  test "should destroy introtext" do
    assert_difference('Introtext.count', -1) do
      delete :destroy, id: @introtext
    end

    assert_redirected_to introtexts_path
  end
end
