module KickerTool
  class Match < ApplicationModel
    attribute :_id
    attribute :deactivated
    attribute :disciplines
    attribute :elimination_match
    attribute :forced_tables
    attribute :group_id
    attribute :hash
    attribute :result
    attribute :round_id
    attribute :skipped
    attribute :tables
    attribute :team1
    attribute :team1bye
    attribute :team2
    attribute :team2bye
    attribute :time_end
    attribute :time_start
    attribute :valid

    def team1=(value)
      super(Team.new(value))
    end

    def team2=(value)
      super(Team.new(value))
    end

    def disciplines=(value)
      super(value&.map { |v| Discipline.new(v) })
    end
  end
end
