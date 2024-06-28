class Book < ApplicationRecord
    has_one_attached :cover
    validates :title, presence: true, length: { minimum: 5 }
    validates :author, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 10 }

    before_create :set_default_cover

    private
  
    def set_default_cover
      default_cover_path = Rails.root.join('app', 'assets', 'images', 'default-cover.webp')
      self.cover.attach(io: File.open(default_cover_path), filename: 'default-cover.webp', content_type: 'image/webp') unless self.cover.attached?
    end
end
