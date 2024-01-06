require "rails_helper"

module KickerTool
  RSpec.describe Participant, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:qualifying) }
    end
  end
end
