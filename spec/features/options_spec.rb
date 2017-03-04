feature "Game page" do

  scenario "Lets the player choose 'Rock' option" do
    sign_in_and_play
    expect(page).to have_button('rock')
  end

end
