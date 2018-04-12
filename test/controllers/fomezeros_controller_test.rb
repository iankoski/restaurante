require 'test_helper'

class FomezerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fomezero = fomezeros(:one)
  end

  test "should get index" do
    get fomezeros_url
    assert_response :success
  end

  test "should get new" do
    get new_fomezero_url
    assert_response :success
  end

  test "should create fomezero" do
    assert_difference('Fomezero.count') do
      post fomezeros_url, params: { fomezero: { endereco: @fomezero.endereco, nome: @fomezero.nome, telefone: @fomezero.telefone } }
    end

    assert_redirected_to fomezero_url(Fomezero.last)
  end

  test "should show fomezero" do
    get fomezero_url(@fomezero)
    assert_response :success
  end

  test "should get edit" do
    get edit_fomezero_url(@fomezero)
    assert_response :success
  end

  test "should update fomezero" do
    patch fomezero_url(@fomezero), params: { fomezero: { endereco: @fomezero.endereco, nome: @fomezero.nome, telefone: @fomezero.telefone } }
    assert_redirected_to fomezero_url(@fomezero)
  end

  test "should destroy fomezero" do
    assert_difference('Fomezero.count', -1) do
      delete fomezero_url(@fomezero)
    end

    assert_redirected_to fomezeros_url
  end
end
