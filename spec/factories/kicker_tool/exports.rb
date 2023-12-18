FactoryBot.define do
  factory :kicker_tool_export, class: KickerTool::Export do
    sequence(:name) { |i| "export-#{i}" }
    asset { Rack::Test::UploadedFile.new(KickerTool::Engine.root.join("spec/files/kicker_tool/export/assets/MonsterDYP_27_11_2023_export.json"), "application/json") }
  end
end
