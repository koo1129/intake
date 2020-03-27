class Client < ApplicationRecord
    belongs_to :user
    has_many :cherapies
    validates :name, presence: true, uniqueness: true
end
