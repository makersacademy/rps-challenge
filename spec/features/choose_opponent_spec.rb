feature 'choosing an opponent' do

  scenario 'the player can choose to play another player' do
    sign_in
    click_button('Person')
    expect(page).to have_content("What's the name of the other player?")
  end

  scenario 'the player can choose to play a computer' do
    sign_in_and_choose_computer
    expect(page).to have_content('You are playing a Computer')
  end

end
