require 'rails_helper'

feature 'User wants to be part of a project' do
  scenario 'successfuly' do
    project = create(:project)
    user = create(:user)

    login_as(user)

    visit project_path(project)

    click_on 'Quero fazer parte'

    fill_in 'Porque gostaria de participar?', with: 'Sou Jogador Go'
    select 'Desenvolvedor', from: 'Papel no projeto'
    fill_in 'Portifolio',   with: 'Bla bla bla'

    click_on 'Enviar'

    expect(current_path).to eq(project_path(project))

    expect(page).not_to have_link('Quero fazer parte')
    expect(page).to have_content('Partipação pendente de aprovação!')

    within '.members' do
      expect(page).to have_content(user.email)
    end
  end
end
