require "rails_helper"

module KickerTool
  RSpec.describe Team, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:match) }
      it { expect(subject).to have_many(:players).dependent(:destroy) }
    end
  end
end
