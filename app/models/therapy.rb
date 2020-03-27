class Therapy < ApplicationRecord
    belongs_to :client
    belongs_to :user
  
    validates :content, presence: true, unless: :image?
end
