feature 'The player can win' do

  scenario 'the player wins if they choose the right option three times' do
    sign_in_and_play
    win
    expect(page).to have_content("If you're half as good at marketing as you are at this game, you must be a pretty good marketeer")
  end

end
