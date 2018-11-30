class TokenGenerationService
  def self.generate
    SecureRandom.hex
  end
end
