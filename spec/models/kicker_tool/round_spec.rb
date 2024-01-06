require "rails_helper"

module KickerTool
  RSpec.describe Round, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:qualifying) }
      it { expect(subject).to have_many(:matches).dependent(:destroy) }
    end
  end
end
