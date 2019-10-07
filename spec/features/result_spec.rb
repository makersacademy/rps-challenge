feature 'Result' do
  subject(:computer) { Computer.new }

  scenario "page displays players move" do
    sign_in_and_play
    expect(page).to have_content "Your move was Rock"
  end

  scenario "page displays computers move" do
    sign_in
    computers_move
    play_rock
    expect(page).to have_content "Computer's move was Scissors"
  end

  scenario "page displays who wins" do
    sign_in
    computers_move
    play_rock
    expect(page).to have_content "You win! :)"
  end

  scenario "You can play again" do
    sign_in_and_play
    expect(page).to have_button('Play again!')
  end

end
