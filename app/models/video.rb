class Video < ApplicationRecord
    has_many :tags, dependent: :destroy
    has_many :comments, dependent: :destroy
end
