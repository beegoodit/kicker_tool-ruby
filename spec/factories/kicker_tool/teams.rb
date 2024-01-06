FactoryBot.define do
  factory :team do
    match { nil }
    _id { "MyString" }
    avatar { "MyString" }
    deactivated { false }
    external { "MyString" }
    guest { false }
    hash { "MyString" }
    marked_for_removal { false }
    name { "MyString" }
    removed { false }
  end
end
