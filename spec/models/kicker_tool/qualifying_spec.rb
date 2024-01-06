require "rails_helper"

module KickerTool
  RSpec.describe Qualifying, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:tournament) }
      it { expect(subject).to have_many(:participants).dependent(:destroy) }
      it { expect(subject).to have_many(:rounds).dependent(:destroy) }
      it { expect(subject).to have_many(:standings).dependent(:destroy) }
    end
  end
end
