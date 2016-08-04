require 'rails_helper'

feature 'User view a list of projects by category' do
  scenario 'successfully' do
    category = create(:category)
    project = create(:project, category: category)

    visit root_path

    within('footer') do
      click_on project.category.name
    end

    within('section') do
      message = "Projeto filtrado por categoria: #{category.name}"
      expect(page).to have_css('h1', text: message)
      expect(page).to have_link(project.name)
      expect(page).to have_content(project.category.name)
      expect(page).to have_content(project.location)
    end
  end

  scenario 'view a friendly empty message' do
    category = create(:category)

    visit root_path

    within('footer') do
      click_on category.name
    end

    expect(page).to have_content 'Nenhum projeto disponível'
  end
end
