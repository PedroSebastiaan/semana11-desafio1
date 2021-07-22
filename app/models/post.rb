class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true, format: URI::regexp(%w[http https])
    validates :content, presence: true
end
