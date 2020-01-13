feature 'Choices' do
  context 'when the game starts' do
    scenario 'player is presented 3 choices' do
      visit '/'
      fill_in :player_1_name, with: "Carmen"
      click_button "Register"
      expect(page).to have_button "Rock"
      expect(page).to have_button "Paper"
      expect(page).to have_button "Scissors"
    end
  end

  scenario 'player can choose one option' do
    visit '/'
    fill_in :player_1_name, with: "Carmen"
    click_button "Register"
    click_button "Rock"
    expect(page).to have_content "Carmen chose Rock"
  end
end
