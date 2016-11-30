require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get labirinto" do
    get :labirinto
    assert_response :success
  end

  test "should get silabas" do
    get :silabas
    assert_response :success
  end

  test "should get vogais" do
    get :vogais
    assert_response :success
  end

  test "should get alfabeto" do
    get :alfabeto
    assert_response :success
  end

end
