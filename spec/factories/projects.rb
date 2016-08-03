FactoryGirl.define do
  factory :project do
    sequence(:name) {|n|  "Pokemon Message#{n}" }
    user 'Ash'
    category
    location 'Japão'
    stage 'Escala'
    main_social 'Facebook'
    description 'Projeto de rede de mensagens'
    looking_for 'Desenvolvedor Ruby'
    media_url 'https://www.youtube.com/watch?v=_3VMeDdJdWA'
  end
end
