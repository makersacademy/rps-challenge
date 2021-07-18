feature 'Allows the user to select RPS' do
  scenario 'Player picks Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You've selected Rock!"
  end
end

feature 'Allows the user to select RPS' do
    scenario 'Player picks Paper' do
      sign_in_and_play
      click_button "Paper"
      expect(page).to have_content "You've selected Paper!"
    end
  end

feature 'Allows the user to select RPS' do
  scenario 'Player picks Scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "You've selected Scissors!"
    end
  end
   