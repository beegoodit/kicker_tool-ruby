require "rails_helper"

module KickerTool
  RSpec.describe Standing, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:qualifying) }
      it { expect(subject).to have_one(:stats).dependent(:destroy) }
    end
  end
end
