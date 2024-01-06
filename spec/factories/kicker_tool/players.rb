FactoryBot.define do
  factory :player do
    team { nil }
    _id { "MyString" }
    avatar { "MyString" }
    deactivated { false }
    external { "MyString" }
    guest { "MyString" }
    hash { "MyString" }
    marked_for_removal { false }
    name { "MyString" }
    removed { false }
  end
end
