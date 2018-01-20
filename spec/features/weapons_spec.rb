feature 'Select weapon' do
  scenario 'player can view weapon Rock' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Player chooses weapon and receives confirmation' do
      sign_in_and_play
      click_button 'Rock'
      expect(page).to have_content("Hulk Hogan chose Rock")
    end
