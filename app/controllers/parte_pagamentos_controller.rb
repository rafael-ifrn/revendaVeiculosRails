class PartePagamentosController < ApplicationController
  before_action :set_parte_pagamento, only: [:show, :edit, :update, :destroy]

  # GET /parte_pagamentos
  # GET /parte_pagamentos.json
  def index
    @parte_pagamentos = PartePagamento.all
  end

  # GET /parte_pagamentos/1
  # GET /parte_pagamentos/1.json
  def show
  end

  # GET /parte_pagamentos/new
  def new
    @parte_pagamento = PartePagamento.new
  end

  # GET /parte_pagamentos/1/edit
  def edit
  end

  # POST /parte_pagamentos
  # POST /parte_pagamentos.json
  def create
    @parte_pagamento = PartePagamento.new(parte_pagamento_params)

    respond_to do |format|
      if @parte_pagamento.save
        format.html { redirect_to @parte_pagamento, notice: t('message.create_success') }
        format.json { render :show, status: :created, location: @parte_pagamento }
      else
        format.html { render :new }
        format.json { render json: @parte_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_pagamentos/1
  # PATCH/PUT /parte_pagamentos/1.json
  def update
    respond_to do |format|
      if @parte_pagamento.update(parte_pagamento_params)
        format.html { redirect_to @parte_pagamento, notice: t('message.update_success') }
        format.json { render :show, status: :ok, location: @parte_pagamento }
      else
        format.html { render :edit }
        format.json { render json: @parte_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_pagamentos/1
  # DELETE /parte_pagamentos/1.json
  def destroy
    @parte_pagamento.destroy
    respond_to do |format|
      format.html { redirect_to parte_pagamentos_url, notice: t('message.destroy_success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_pagamento
      @parte_pagamento = PartePagamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_pagamento_params
      params.require(:parte_pagamento).permit(:quantia, :forma_pagamento_id, :venda_id, :compra_id)
    end
end
