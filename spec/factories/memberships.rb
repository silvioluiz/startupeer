FactoryGirl.define do
  factory :membership do
    user nil
    project nil
    role 'Desenvolvedor'
    reason 'Sei programar muito'
    portifolio 'github.com/campuscode'
  end
end
