require 'rails_helper'

feature 'Visitor view list of projects' do
  scenario 'successfully' do
    visit root_path

    project1 = create(:project)
    project2 = create(:project)

    click_on 'Projetos'

    expect(page).to have_css('h1', text: 'Lista de Projetos')
    expect(page).to have_link(project1.name)
    expect(page).to have_content(project1.category)
    expect(page).to have_content(project1.location)
    expect(page).to have_content(project1.stage)
    expect(page).to have_link(project2.name)
    expect(page).to have_content(project2.category)
    expect(page).to have_content(project2.location)
    expect(page).to have_content(project2.stage)
  end
end
