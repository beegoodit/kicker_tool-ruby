require "rails_helper"

module KickerTool
  RSpec.describe OptionsDiscipline, type: :model do
    describe "associations" do
      it { expect(subject).to belong_to(:options) }
    end
  end
end
