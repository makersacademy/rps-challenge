feature 'Multiplayer' do
  scenario 'Player 2 can be entered' do
    visit '/'
    expect(page).to have_content('Player 2')
  end
  context 'In Game scenarios' do
    before(:each) { multiplayer_sign_in }
    scenario 'Player 2s name is displayed' do
      expect(page).to have_content('Jack Vs. Durain')
    end
    scenario 'Player 2 Moves after Player 1' do
      within('div#p1_choice') { choose 'Rock' }
      within('div#p2_choice') { choose 'Rock' }
      click_button('Go!')
      expect(page).to have_content("Jack used Rock against Durain's Rock")
    end
    scenario 'above works when someone wins' do
      within('div#p1_choice') { choose 'Rock' }
      within('div#p2_choice') { choose 'Scissors' }
      click_button('Go!')
      expect(page).to have_content("Jack used Rock against Durain's Scissors")
    end
  end
end
