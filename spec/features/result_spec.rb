feature 'takes users move and returns result' do
  scenario 'user chooses a move' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to satisfy { |page| page.has_content?("Computer choice is:") && ((". You win! :)" ) or (". Computer wins :(")) or page.has_content?("It's a draw")}
  end
end

feature 'gives user the option of playing game again' do
  scenario 'user is viewing the game result' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_link("Play again")
  end
end
