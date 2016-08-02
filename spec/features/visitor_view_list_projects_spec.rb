require 'rails_helper'

feature 'Visitor view list of projects' do
  scenario 'successfully' do
    visit root_path

    project1 = create(:project)
    project2 = create(:project, name: 'Projeto 1', location: 'São Paulo')

    click_on 'Projetos'

    expect(page).to have_css('h1', text: 'Lista de Projetos')
    expect(page).to have_link(project1.name)
    expect(page).to have_content(project1.category.name)
    expect(page).to have_content(project1.location)
    expect(page).to have_content(project1.stage)
    expect(page).to have_link(project2.name)
    expect(page).to have_content(project2.category.name)
    expect(page).to have_content(project2.location)
    expect(page).to have_content(project2.stage)
  end

  scenario 'and visitor view details of project' do
    visit root_path

    project = create(:project)

    click_on 'Projetos'

    click_on project.name

    expect(page).to have_css('h1', text: 'Detalhes do Projetos')
    expect(page).to have_content(project.name)
    expect(page).to have_content(project.user)
    expect(page).to have_content(project.category.name)
    expect(page).to have_content(project.location)
    expect(page).to have_content(project.stage)
    expect(page).to have_content(project.main_social)
    expect(page).to have_content(project.description)
    expect(page).to have_content(project.looking_for)
  end
end
