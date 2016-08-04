require 'rails_helper'

feature 'Visitant view project' do
  scenario 'successfully' do
    project1 = create(:project)

    visit root_path

    within '#main-project' do
      expect(page).to have_content project1.name
      expect(page).to have_content project1.location
      expect(page).to have_content project1.description
      expect(page).to have_xpath("//img[@src=\"#{project1.media_url}\"]")

      expect(page).to have_link('Não gostei')
      expect(page).to have_link('Gostei')
    end
  end

  scenario 'and like' do
    project1 = create(:project)

    visit root_path

    within '#main-project' do
      click_on 'Gostei'
    end

    expect(page).to have_css('h1', text: project1.name)
    expect(page).to have_xpath("//img[@src=\"#{project1.media_url}\"]")
    expect(page).to have_content(project1.owner.email)
    expect(page).to have_content(project1.category.name)
    expect(page).to have_content(project1.location)
    expect(page).to have_content(project1.stage)
    expect(page).to have_content(project1.main_social)
    expect(page).to have_content(project1.description)
    expect(page).to have_content(project1.looking_for)
  end

  scenario 'and do not like' do
    create(:project)
    visit root_path

    within '#main-project' do
      click_on 'Não gostei'
    end

    expect(current_path).to eq(root_path)
  end

  scenario 'and do not like and not view himself' do
    # Usuario clica em nao gostei e visualiza qualquer outro projeto
  end

  scenario 'and not exist projects' do
    visit root_path

    expect(page).to have_content('Não existem projetos cadastrados')
    expect(page).to have_link('Criar projeto')
  end
end
