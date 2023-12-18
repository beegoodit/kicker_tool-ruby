module KickerTool
  class Tournament < ApplicationModel
    attribute :_id
    attribute :created_at
    attribute :eliminations
    attribute :mode
    attribute :name
    attribute :name_type
    attribute :options
    attribute :qualifying
    attribute :sport
    attribute :stage
    attribute :updated_at
    attribute :version

    validates :_id, presence: true
    validates :created_at, presence: true
    validates :eliminations, presence: true
    validates :mode, presence: true
    validates :name, presence: true
    validates :name_type, presence: true
    validates :options, presence: true
    validates :qualifying, presence: true
    validates :sport, presence: true
    validates :stage, presence: true
    validates :updated_at, presence: true
    validates :version, presence: true

    def options=(value)
      super(Options.new(value))
    end

    def qualifying=(value)
      super(value&.map { |v| Qualifying.new(v) })
    end
  end
end
