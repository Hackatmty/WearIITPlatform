class Usuario < ActiveRecord::Base
	has_many :dispositivo, :dependent => :destroy
  has_many :lecturas_minuto, :through => :dispositivo
  has_many :lecturas_dium, :through => :lecturas_minuto

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :name, presence: true, length: {maximum: 60}

  validates :fechaNac, presence: true

  validates :genero, inclusion: { in: %w(masculino femenino), message: "%{value} no es un genero valido" }

  validates :peso, numericality: { only_integer: true }

  validates :altura, numericality: { only_integer: true }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
 	uniqueness: { case_sensitive: false }

 	has_secure_password
  validates :password, length: { minimum: 6 }

  def Usuario.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Usuario.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = Usuario.digest(Usuario.new_remember_token)
  end

end
