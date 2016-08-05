require 'rails_helper'

feature 'User view members details' do
  scenario 'successfully', js: true do
    owner = create(:user)
    project = create(:project, owner: owner)
    user = create(:user)
    project.memberships.create(user: user)

    visit project_path(project)

    click_on user.email

    within '#member-details' do
      expect(page).to have_content(user.email)
    end
  end
end
