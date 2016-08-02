require 'rails_helper'

feature 'user create project' do
  scenario 'successfully' do
    visit root_path

    click_on 'Novo Projeto'
    build(:project)

    expect(page).to have_css('h1', text: 'Novo Projeto')
    fill_in 'Nome',         with: project.name
    fill_in 'Criador',      with: project.user
    fill_in 'Categoria',    with: project.category
    fill_in 'Localização',  with: project.location
    fill_in 'Estágio',      with: project.stage
    fill_in 'Rede social',  with: project.main_social
    fill_in 'Descrição',    with: project.description
    fill_in 'O que procura?',         with: project.looking_for

    click_on 'Criar Projeto'

    expect(page).to have_css('h1', project.name)
    expect(page).to have_content(project.user)
    expect(page).to have_content(project.category)
    expect(page).to have_content(project.location)
    expect(page).to have_content(project.stage)
    expect(page).to have_content(project.main_social)
    expect(page).to have_content(project.description)
    expect(page).to have_content(project.looking_for)
  end
end
