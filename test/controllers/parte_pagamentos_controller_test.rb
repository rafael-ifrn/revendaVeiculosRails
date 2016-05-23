require 'test_helper'

class PartePagamentosControllerTest < ActionController::TestCase
  setup do
    @parte_pagamento = parte_pagamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parte_pagamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parte_pagamento" do
    assert_difference('PartePagamento.count') do
      post :create, parte_pagamento: { quantia: @parte_pagamento.quantia }
    end

    assert_redirected_to parte_pagamento_path(assigns(:parte_pagamento))
  end

  test "should show parte_pagamento" do
    get :show, id: @parte_pagamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parte_pagamento
    assert_response :success
  end

  test "should update parte_pagamento" do
    patch :update, id: @parte_pagamento, parte_pagamento: { quantia: @parte_pagamento.quantia }
    assert_redirected_to parte_pagamento_path(assigns(:parte_pagamento))
  end

  test "should destroy parte_pagamento" do
    assert_difference('PartePagamento.count', -1) do
      delete :destroy, id: @parte_pagamento
    end

    assert_redirected_to parte_pagamentos_path
  end
end
