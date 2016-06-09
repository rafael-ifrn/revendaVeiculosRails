class Veiculo < ActiveRecord::Base



	validate :foto_mime
	validates_presence_of :chassi
	validates_format_of :placa, :with => /[A-Z]{3}[0-9]{4}/, :on => [:create, :update] , :message => 'Permitido apenas 3 letras maiusculas seguida de 4 números'
	validates_format_of :anoFabricacao, :with => /[0-9]{4}/, :on => [:create, :update] , :message => 'Permitido apenas 4 números'
	validates_format_of :cilindradas, :with => /[0-9]{0,10}/, :on => [:create, :update] , :message => 'Permitido apenas números'

	def imagem=(img_field)
		self.fotoMime = img_field.content_type
		self.foto = img_field.read
	end

	has_many :compra
	has_many :venda
	belongs_to :modelo

	protected
	def foto_mime
		if self.fotoMime and self.fotoMime !~ /^image\/jpeg/ and self.fotoMime !~ /^image\/png/ and self.fotoMime !~ /^image\/gif/
			errors.add(:imagem,"Apenas é aceito imagens no formato .png, .jpeg, .gif. Formato enviado #{self.fotoMime}.")
		end
	end

end
