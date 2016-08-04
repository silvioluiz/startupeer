FactoryGirl.define do
  factory :project do
    sequence(:name) { |n| "Pokemon Message#{n}" }
    association :owner, factory: :user
    category
    location 'Japão'
    stage 'Escala'
    main_social 'Facebook'
    description 'Projeto de rede de mensagens'
    looking_for 'Desenvolvedor Ruby'
    media_url 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg'
  end
end
