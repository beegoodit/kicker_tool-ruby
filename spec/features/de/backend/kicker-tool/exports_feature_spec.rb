require "rails_helper"

RSpec.describe "/de/backend/kicker-tool/exports", type: :feature do
  let(:resource_class) { KickerTool::Export }

  describe "REST actions" do
    let(:resource) { create(:kicker_tool_export) }
    let(:resources) { create_list(:kicker_tool_export, 3) }

    # List
    it {
      resources
      expect(subject).to implement_index_action(self)
    }

    # Create
    it {
      expect(subject).to implement_create_action(self)
        .for(resource_class)
        .within_form("#new_export") {
          # fill the needed form inputs via capybara here
          #
          # Example:
          #
          #     select 'de', from: 'slider[locale]'
          #     fill_in 'slider[name]', with: 'My first slider'
          #     check 'slider[auto_start]'
          #     fill_in 'slider[interval]', with: '3'

          # attach asset
          fill_in "export[name]", with: "MonsterDYP_27_11_2023_export"
          attach_file "export[asset]", KickerTool::Engine.root.join(*%w[spec files kicker_tool export assets MonsterDYP_27_11_2023_export.json])
        }
        .increasing { resource_class.count }.by(1)
    }

    # Read
    it { expect(subject).to implement_show_action(self).for(resource) }

    # Update
    it {
      expect(subject).to implement_update_action(self)
        .for(resource)
        .within_form(".edit_export") {
          # fill the needed form inputs via capybara here
          #
          # Example:
          #
          #     fill_in 'slider[name]', with: 'New name'
          fill_in "export[name]", with: "Some new name"
        }
        .updating
        .from(resource.attributes)
        .to({"name" => "Some new name"}) # Example: .to({ 'name' => 'New name' })
    }

    # Delete
    it {
      expect(subject).to implement_delete_action(self)
        .for(resource)
        .reducing { resource_class.count }.by(1)
    }
  end
end
