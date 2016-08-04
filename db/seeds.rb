category = Category.create(name: 'Jogos digitais')
user = User.create(email: 'jon@campuscode.com.br', password: '12345678')

Project.create(name: 'Pokemon Message',
               owner: user,
               category: category,
               location: 'Japão',
               stage: 'Escala',
               main_social: 'Facebook',
               description: 'Projeto de rede de mensagens',
               looking_for: 'Desenvolvedor Ruby',
               media_url: 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg')

Project.create(name: 'Startup Media',
              owner: user,
              category: category,
              location: 'São Paulo',
              stage: 'Escala',
              main_social: 'Orkut',
              description: 'Projeto de startups de pokemon go',
              looking_for: 'Desenvolvedor Go',
              media_url: 'http://www.e11.com.br/wp-content/uploads/2015/05/STARTUP1.jpg')
