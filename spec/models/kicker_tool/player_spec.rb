require "rails_helper"

module KickerTool
  RSpec.describe Player, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:team) }
    end
  end
end
