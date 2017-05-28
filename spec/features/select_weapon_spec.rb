feature 'Player start a game' do
  scenario 'player is prompted to select a weapon' do
    sign_in_and_play
    expect(page).to have_content 'Please select your weapon for this round'
  end

  scenario "Player can choose the rock button" do
    sign_in_and_play
    find_button('Rock').click
  end

  scenario "Player can choose the paper button" do
    sign_in_and_play
    find_button('Paper').click
  end

  scenario "Player can choose the scissor button" do
    sign_in_and_play
    find_button('Scissor').click
  end
end
