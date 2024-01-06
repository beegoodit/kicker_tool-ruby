FactoryBot.define do
  factory :options_discipline do
    options { nil }
    _id { "MyString" }
    draw { false }
    fast_input { false }
    name { "MyString" }
    num_points { 1 }
    num_sets { 1 }
    two_ahead { false }
  end
end
