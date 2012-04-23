FactoryGirl.define do
  factory :part do |f|
    f.name "Rubber band"
    f.sku "A1345"
    f.description "A crazy complicated part"
    f.color "Magenta"
    f.quantity 100
  end

  factory :component do |f|
    f.name "Articulating Arm"
    f.quantity 100
  end

  factory :widget do |f|
    f.name "Engine"
    f.quantity 100
  end  
end