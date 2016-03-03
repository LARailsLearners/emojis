class User < ActiveRecord::Base
	has_secure_password
  before_create :generate_token
  
	validates :email, uniqueness: true
	validates :first_name, :last_name, :email,
			presence: true

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

  def generate_token
    begin
      self[:auth_token] = SecureRandom.urlsafe_base64
    end while User.exists?(:auth_token => self[:auth_token])
  end

  def regenerate_auth_token
    self.auth_token = nil
    generate_token
    save!
  end  
end
