class Url < ApplicationRecord
  validates :long_url, format: {with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix}

def shorten
    self.short_url = SecureRandom.hex(5)
    # self.update(short_url: SecureRandom.hex(5))
  end 
end
