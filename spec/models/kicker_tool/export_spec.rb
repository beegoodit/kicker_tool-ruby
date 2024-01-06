require "rails_helper"

module KickerTool
  RSpec.describe Export, type: :model do
    describe "associations" do
      it { expect(subject).to have_one_attached(:asset) }
      it { expect(subject).to have_one(:tournament).dependent(:destroy) }
    end
  end
end
