fintech_category = Category.create(name: 'FinTech')
games_category = Category.create(name: 'Jogos digitais')
ecommerce_category = Category.create(name: 'Comércio Eletrônico')
owner1 = User.create(email: 'owner1@email.com.br', password: '12345678')
owner2 = User.create(email: 'owner2@email.com.br', password: '12345678')

User.create(email: 'desenvolvedor1@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor2@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor3@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor4@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor5@email.com.br', password: '12345678')

User.create(email: 'designer1@email.com.br', password: '12345678')
User.create(email: 'designer2@email.com.br', password: '12345678')
User.create(email: 'designer3@email.com.br', password: '12345678')
User.create(email: 'designer4@email.com.br', password: '12345678')
User.create(email: 'designer5@email.com.br', password: '12345678')

Project.create(name: 'Pokemon Messenger',
               owner: owner1,
               category: games_category,
               location: 'Japão',
               stage: 'Escala',
               main_social: 'Facebook',
               description: 'O objetivo do Projeto é criar uma rede de mensagens para que os usuários',
               looking_for: 'Desenvolvedor Ruby',
               media_url: 'http://im.ziffdavisinternational.com/t/ign_br/blogroll/p/pokemon-go/pokemon-go-developer-discuss-the-new-game-at-gdc_bnmm.1920.png')

Project.create(name: 'Digimon O retorno',
               owner: owner1,
               category: games_category,
               location: 'Coréia do Sul',
               stage: 'Ideação',
               main_social: 'Facebook',
               description: 'O objetivo do Projeto é ressuscitar o Digimon após o sucesso do Pokemon GO',
               looking_for: 'Desenvolvedor Ruby',
               media_url: 'https://advdmo.files.wordpress.com/2015/09/maxresdefault.jpg')

Project.create(name: 'Controle Financeiro',
              owner: owner2,
              category: fintech_category,
              location: 'Salvador',
              stage: 'Validação',
              main_social: 'Orkut',
              description: 'Projeto de startups de pokemon go',
              looking_for: 'Desenvolvedor Go',
              media_url: 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg')

Project.create(name: 'OldBank',
              owner: owner2,
              category: fintech_category,
              location: 'Salvador',
              stage: 'Validação',
              main_social: 'Facebook',
              description: 'Sucessor vintage do Nubank',
              looking_for: 'Desenvolvedor Ruby, Designer',
              media_url: 'http://www.fatonotorio.com.br/upload/dn_noticia/2015/08/banco.jpg')


Project.create(name: 'Bazar do Condominio',
              owner: owner2,
              category: ecommerce_category,
              location: 'São Paulo',
              stage: 'Validação',
              main_social: 'Orkut',
              description: 'Projeto de Bazar do Condomínio',
              looking_for: 'Desenvolvedor Go',
              media_url: 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg')


Project.create(name: 'Quitanda Online',
              owner: owner2,
              category: ecommerce_category,
              location: 'Porto Velho',
              stage: 'Escala',
              main_social: 'Orkut',
              description: 'Projeto de Quitanda Online',
              looking_for: 'Designer, Comercial',
              media_url: 'http://www.pegpese.com.br/imagens/backs/05.jpg')

