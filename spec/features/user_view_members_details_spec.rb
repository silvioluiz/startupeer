require 'rails_helper'

feature 'User view members details' do
  scenario 'successfully', js: true do
    owner = create(:user)
    project = create(:project, owner: owner)
    user = create(:user)
    membership = create(:membership, user: user, project: project)
    project.memberships << membership

    login_as owner
    visit project_path(project)

    click_on user.email

    within '#member-details' do
      expect(page).to have_content(user.email)
      expect(page).to have_content(membership.role)
      expect(page).to have_content(membership.portifolio)
      expect(page).to have_content(membership.reason)
      expect(page).to have_link('Aprovar')
      expect(page).to have_link('Reprovar')
    end
  end

  scenario 'and approve or reject member only if owner', js: true do
    owner = create(:user)
    project = create(:project, owner: owner)
    user = create(:user)
    project.memberships.create(user: user)

    login_as(user)

    visit project_path(project)

    within '#members-list' do
      expect(page).not_to have_link(user.email)
    end
  end

  scenario 'and authenticated', js: true do
    owner = create(:user)
    project = create(:project, owner: owner)
    user = create(:user)
    project.memberships.create(user: user)

    visit project_path(project)

    within '#members-list' do
      expect(page).not_to have_link(user.email)
    end
  end
end
