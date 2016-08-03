require 'rails_helper'

feature 'Visitant view project' do
  scenario 'successfully' do

    project1, project2 = create_list(:project, 2)

    visit root_path

    within '#main_project' do
      expect(page).to have_content project1.name
      expect(page).to have_content project1.location
      expect(page).to have_content project1.description
      expect(page).to have_content project1.media_url

      expect(page).to have_link('Não gostei')
      expect(page).to have_link('Gostei')
    end

  end

  scenario 'and like' do
    project1, project2 = create_list(:project, 2)

    visit root_path

    within '#main_project' do
      click_on 'Gostei'
    end

    expect(page).to have_css('h1', text: "Detalhes do Projeto #{project1.name}")
    expect(page).to have_link('Mídia', href: project1.media_url)
    expect(page).to have_content(project1.user)
    expect(page).to have_content(project1.category.name)
    expect(page).to have_content(project1.location)
    expect(page).to have_content(project1.stage)
    expect(page).to have_content(project1.main_social)
    expect(page).to have_content(project1.description)
    expect(page).to have_content(project1.looking_for)

  end

  scenario 'and do not like' do
    project1, project2 = create_list(:project, 2)

    visit root_path

    within '#main_project' do
      click_on 'Não Gostei'
      expect(page).to have_content project2.name
      expect(page).to have_content project2.location
      expect(page).to have_content project2.description
      expect(page).to have_content project2.media_url
    end

  end

end
