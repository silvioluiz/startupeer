require 'rails_helper'

feature 'User wants to be part of a project' do
  scenario 'successfuly' do
    project = create(:project)
    user = create(:user)

    login_as(user)

    visit project_path(project)

    click_on 'Quero fazer parte'

    expect(current_path).to eq(project_path(project))

    expect(page).not_to have_link('Quero fazer parte')

    within '#members' do
      expect(page).to have_content(user.email)
    end
  end
end
