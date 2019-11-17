class User < ApplicationRecord
    before_save { email.downcase!}

    has_secure_password

    def self.new_remember_token
        SecurePandom.urlsafe_base64
    end

    def self.encrypt(token)
        Digest::SHA1.hexdigest(token.yo_s)
    end
end
