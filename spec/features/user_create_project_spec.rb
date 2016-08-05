require 'rails_helper'

feature 'user create project' do
  scenario 'successfully' do
    category = create(:category)
    project = build(:project, category: category)
    user = create(:user)

    login_as(user)
    visit root_path

    click_on 'Novo Projeto'

    expect(page).to have_css('h1', text: 'Novo Projeto')

    fill_in 'Nome',             with: project.name
    select category.name,       from: 'Categoria'
    fill_in 'Localização',      with: project.location
    fill_in 'Estágio',          with: project.stage
    fill_in 'Rede social',      with: project.main_social
    fill_in 'Descrição',        with: project.description
    fill_in 'O que procura?',   with: project.looking_for
    fill_in 'Mídia',            with: project.media_url

    click_on 'Criar Projeto'

    expect(page).to have_css('h1', text: project.name)
    expect(page).to have_css("img[src='#{project.media_url}']")
    expect(page).to have_content(user.email)
    expect(page).to have_content(project.category.name)
    expect(page).to have_content(project.location)
    expect(page).to have_content(project.stage)
    expect(page).to have_content(project.main_social)
    expect(page).to have_content(project.description)
    expect(page).to have_content(project.looking_for)
  end

  scenario 'wiht invalid data' do
    user = create(:user)
    login_as(user)
    visit new_project_path

    build(:project)

    click_on 'Criar Projeto'

    expect(page).to have_css('h1', text: 'Novo Projeto')
    expect(page).to have_content 'Não foi possível criar projeto'
  end

  scenario 'must be authenticated' do
    visit root_path

    expect(page).not_to have_link('Novo Projeto')
  end
end
