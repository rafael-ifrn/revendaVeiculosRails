class Usuario < ActiveRecord::Base

	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :email, :nome, :login, :cpf, :telefone

	validates_uniqueness_of :email, :login, :cpf

	has_secure_password


	validate :email_format

	private
	# Essa validação pode ser representada da seguinte forma:
	# validates_format_of :email, with: EMAIL_REGEXP
	def email_format
		errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
	end


end
