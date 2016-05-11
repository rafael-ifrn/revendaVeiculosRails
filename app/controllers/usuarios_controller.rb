class UsuariosController < ApplicationController

	before_action :set_usuario, only: [:show, :edit, :update, :destroy]

	def show
	end

	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			redirect_to @usuario, notice: t('message.create_success')
		else
			render action: :new
		end	
	end

	def edit
	end

	def update
    	respond_to do |format|
		if @usuario.update(usuario_params)
			format.html { redirect_to @usuario, notice: t('message.update_success') }
			format.json { render :show, status: :ok, location: @usuario }
		else
			format.html { render :edit }
			format.json { render json: @usuario.errors, status: :unprocessable_entity }
		end
	end
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nome, :cpf, :email, :telefone, :login, :password, :password_confirmation)
    end

end