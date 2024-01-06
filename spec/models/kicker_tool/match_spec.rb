require "rails_helper"

module KickerTool
  RSpec.describe Match, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:round) }
      it { expect(subject).to have_many(:disciplines).dependent(:destroy) }
      it { expect(subject).to have_one(:team1).dependent(:destroy) }
      it { expect(subject).to have_one(:team2).dependent(:destroy) }
    end
  end
end
