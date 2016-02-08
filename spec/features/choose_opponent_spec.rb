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

  scenario 'choosing another player will allow each player to choose a weapon' do
    sign_in
    click_button('Person')
    fill_in('Name', with: 'Tom')
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content('Hi Tom!')
  end

  scenario 'multiplayer mode confirms to rules of RPSSL ' do
    sign_in
    click_button('Person')
    fill_in('Name', with: 'Tom')
    click_button('Submit')
    click_button('Paper')
    click_button('Rock')
    expect(page).to have_content('Paper beats Rock, Emma has won!')
  end

end
