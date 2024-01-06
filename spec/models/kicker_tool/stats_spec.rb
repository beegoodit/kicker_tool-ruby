require "rails_helper"

module KickerTool
  RSpec.describe Stats, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:standing) }
    end
  end
end
