class Url < ApplicationRecord
  validates :long_url, uniqueness: true
  before_save :shorten

  def shorten
    self.short_url = SecureRandom.hex(3)
  end

  def increase
    self.count  += 1
  end
  
end
