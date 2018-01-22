feature 'the player can lose' do

  scenario 'the player is shown the losing page' do
    sign_in_and_play
    lose
    expect(page).to have_content("I'm sure you don't give up that easily. Why don't you play again?")
  end

end
