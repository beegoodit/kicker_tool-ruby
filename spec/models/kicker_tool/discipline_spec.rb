require "rails_helper"

module KickerTool
  RSpec.describe Discipline, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:match) }
      it { expect(subject).to have_many(:sets).dependent(:destroy) }
    end
  end
end
