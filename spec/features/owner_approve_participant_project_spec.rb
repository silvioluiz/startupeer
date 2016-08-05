require 'rails_helper'

feature 'Owner can approve a participant' do
  scenario 'successfuly' do
    user = create(:user)
    project = create(:project, owner: user)
    create(:membership, user: user, project: project)
    login_as(user)

    visit project_path(project)

    within '.members' do
      click_on 'Aprovar'
    end

    expect(current_path).to eq(project_path(project))

    within '.members' do
      expect(page).to have_content('Aprovado')
      expect(page).not_to have_link('Aprovado')
    end
  end
end
