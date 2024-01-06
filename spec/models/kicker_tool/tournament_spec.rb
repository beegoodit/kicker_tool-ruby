require "rails_helper"

module KickerTool
  RSpec.describe Tournament, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:export) }
      it { expect(subject).to have_one(:options).dependent(:destroy) }
      it { expect(subject).to have_many(:qualifyings).dependent(:destroy) }
    end
  end
end
