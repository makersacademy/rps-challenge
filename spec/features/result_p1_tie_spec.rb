feature 'Result page P1: draw game' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
    visit '/p1_play'
    click_button('ROCK')
    visit '/p2_play'
    click_button('ROCK')
  end

  scenario 'Displays player1\'s choice' do
    expect(page).to have_content('Misa has chosen... ROCK!')
  end

  scenario 'Displays player2\'s choice' do
    expect(page).to have_content('You have chosen... ROCK!')
  end

  scenario 'Annouce draw when p1 and p2 choose same move' do
    expect(page).to have_content('Misa and you draw!')
  end
end
