category = Category.create(name: 'Jogos digitais')
owner1 = User.create(email: 'owner1@email.com.br', password: '12345678')
owner2 = User.create(email: 'owner2@email.com.br', password: '12345678')

User.create(email: 'desenvolvedor1@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor2@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor3@email.com.br', password: '12345678')
User.create(email: 'desenvolvedor4@email.com.br', password: '12345678')

User.create(email: 'designer1@email.com.br', password: '12345678')
User.create(email: 'designer2@email.com.br', password: '12345678')
User.create(email: 'designer3@email.com.br', password: '12345678')
User.create(email: 'designer4@email.com.br', password: '12345678')

Project.create(name: 'Pokemon Messenger',
               owner: owner1,
               category: category,
               location: 'Japão',
               stage: 'Escala',
               main_social: 'Facebook',
               description: 'O objetivo do Projeto é criar uma rede de mensagens para que os usuários',
               looking_for: 'Desenvolvedor Ruby',
               media_url: 'http://im.ziffdavisinternational.com/t/ign_br/blogroll/p/pokemon-go/pokemon-go-developer-discuss-the-new-game-at-gdc_bnmm.1920.png')

Project.create(name: 'Startup Media',
              owner: owner2,
              category: category,
              location: 'São Paulo',
              stage: 'Escala',
              main_social: 'Orkut',
              description: 'Projeto de startups de pokemon go',
              looking_for: 'Desenvolvedor Go',
              media_url: 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg')
