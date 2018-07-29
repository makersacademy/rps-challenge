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
      choose 'Rock'
      click_button('Go!')
      choose 'Rock'
      click_button('Go!')
      expect(page).to have_content('0 - 0')
      expect(page).to have_content("Jack used Rock against Durain's Rock")
    end
  end
end
