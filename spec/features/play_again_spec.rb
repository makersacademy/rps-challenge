feature "play again?" do
  scenario "the player click play again" do
    computer_and_sign_on
    choose('paper')
    click_button('Play')
    click_button('Play Again?')
    expect(page).to have_content 'Bob, are you ready to play?'
  end
end
