require "rails_helper"

module KickerTool
  RSpec.describe Options, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:tournament) }
      it { expect(subject).to have_many(:options_disciplines).dependent(:destroy) }
    end
  end
end
