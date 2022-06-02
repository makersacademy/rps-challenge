RSpec.describe 'form for player choice' do
  feature 'player chooses scissors' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Scissors"
      expect(page).to have_content "You chose scissors!"
    end
  end

  feature 'player chooses rock' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Rock"
      expect(page).to have_content "You chose rock!"
    end
  end

  feature 'player chooses rock' do
    scenario 'returns their choice' do
      sign_in_and_play
      click_on "Paper"
      expect(page).to have_content "You chose paper!"
    end
  end
end
  