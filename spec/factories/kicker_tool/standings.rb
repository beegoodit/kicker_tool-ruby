FactoryBot.define do
  factory :standing do
    qualifying { nil }
    _id { "MyString" }
    deactivated { false }
    group_id { "MyString" }
    guest { false }
    hash { "MyString" }
    marked_for_removal { false }
    name { "MyString" }
    removed { false }
  end
end
