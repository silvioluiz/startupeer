require 'rails_helper'

feature 'user view project details' do
  scenario 'successfully' do
    project = create(:project)

    visit project_path(project)

    expect(page).to have_css('h1', text: project.name)
    expect(page).to have_content(project.user)
    expect(page).to have_content(project.category.name)
    expect(page).to have_content(project.location)
    expect(page).to have_content(project.stage)
    expect(page).to have_content(project.main_social)
    expect(page).to have_content(project.description)
    expect(page).to have_content(project.looking_for)
    expect(page).to have_css("img[src='#{project.media_url}']")
  end

  scenario 'User not interested in project' do
    project = create(:project)

    visit project_path(project)

    click_on 'Ver outros projetos'

    expect(current_path).to eq(root_path)
  end
end
