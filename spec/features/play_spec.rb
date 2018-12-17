RSpec.feature "player make a move" do
    scenario "player chose rock" do
      sign_in_and_submit
      click_rock_and_submit
      expect(page).to have_content('result')

    end
    scenario "player chose paper" do
      sign_in_and_submit
      click_paper_and_submit
      expect(page).to have_content('result')
    end
    scenario "player chose scissors" do
      sign_in_and_submit
      click_scissors_and_submit
      expect(page).to have_content('result')
    end
end
