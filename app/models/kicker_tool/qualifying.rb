module KickerTool
  class Qualifying < ApplicationRecord
    belongs_to :tournament
    has_many :participants, dependent: :destroy
    accepts_nested_attributes_for :participants
    has_many :rounds, dependent: :destroy
    accepts_nested_attributes_for :rounds
    has_many :standings, dependent: :destroy
    accepts_nested_attributes_for :standings

    def human
      [tournament&.name, _hash].join(" - ")
    end

    def participants_count
      participants.count
    end

    def rounds_count
      rounds.count
    end

    def standings_count
      standings.count
    end
  end
end
