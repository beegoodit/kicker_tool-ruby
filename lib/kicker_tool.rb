require "turbo-rails"

require "kicker_tool/configuration"
require "kicker_tool/engine"
require "kicker_tool/version"

module KickerTool
  def self.configure
    yield Configuration
  end
end
