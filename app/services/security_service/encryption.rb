# Usage example
# encryption = SecurityService::Encryption.new("abcdef", "test")
# puts encryption.encrypt
# decryption = SecurityService::Decryption.new(encryption.encrypt, "test")
# puts decryption.decrypt

require 'openssl'
require 'digest/sha1'
module SecurityService
  class Encryption
    def initialize(input_text, input_key)
      @input_text = input_text.to_s
      @input_key = input_key.to_s
    end

    def encrypt
      # create the cipher for encrypting
      cipher = OpenSSL::Cipher.new('AES-128-CBC')
      cipher.encrypt

      # load the input key into the cipher
      cipher.key = Digest::SHA1.hexdigest(@input_key).first(16)

      # encrypt the message
      cipher.update(@input_text) + cipher.final
    end
  end

  class Decryption
    def initialize(encrypted_text, input_key)
      @encrypted_text = encrypted_text.to_s
      @input_key = input_key.to_s
    end

    def decrypt
      # create the cipher for decrypting
      cipher = OpenSSL::Cipher.new('AES-128-CBC')
      cipher.decrypt

      # load the input key into the cipher
      cipher.key = Digest::SHA1.hexdigest(@input_key).first(16)

      # decrypt the encrypted text or throw error
      begin
        cipher.update(@encrypted_text) + cipher.final
      rescue
        {error: "Invalid input key"}
      end
    end
  end
end
