feature 'Enter names' do
  scenario 'Player can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to the game Bibi, your opponent is Computer!'
  end
  scenario 'Player is given a button to direct them to a page of choices' do
    sign_in_and_play
    expect(page).to have_button "Let's go!"
  end
end
