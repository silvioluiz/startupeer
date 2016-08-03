require 'rails_helper'

feature 'User authenticates to manage the projects' do
  scenario 'successfuly' do
    visit root_path

    within 'nav' do
      click_on 'Entrar'
    end

    user = create(:user)

    fill_in 'Email', with: user.email
    fill_in 'Senha', with: user.password

    within 'form' do
      click_on 'Entrar'
    end

    expect(current_path).to eq(root_path)
  end

  scenario 'log out' do
    user = create(:user)
    login_as(user)

    visit root_path

    click_on 'Sair'

    expect(page).not_to have_content 'Sair'
    expect(page).to have_content 'Entrar'
  end
end
