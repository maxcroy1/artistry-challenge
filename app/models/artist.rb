class Artist < ApplicationRecord
    has_many :artist_instruments
    has_many :instruments, through: :artist_instruments

    validates :name, presence: true
    validates :title, presence: true, uniqueness: true
    validates :age, inclusion: {in: 0..120}, allow_blank: true
end
