require "rails_helper"

module KickerTool
  RSpec.describe Set, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:discipline) }
    end
  end
end
