require 'rails_helper'

feature 'Owner can reject a participant', js: true do
  scenario 'successfuly' do
    owner = create(:user)
    member = create(:user)
    project = create(:project, owner: owner)
    membership = create(:membership, user: member, project: project)
    login_as(owner)

    visit project_path(project)

    click_on member.email

    within '#member-details' do
      click_on 'Reprovar'
    end

    membership = Membership.find(membership.id)
    expect(membership.reject?).to be true
  end
end
