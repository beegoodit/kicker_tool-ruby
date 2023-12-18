require "rails_helper"

module KickerTool
  RSpec.describe Export, type: :model do
    describe "associations" do
      it { should have_one_attached(:asset) }
    end
  end
end
