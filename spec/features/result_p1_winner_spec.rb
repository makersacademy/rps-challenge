feature 'Result page P1: winner decleration' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
    visit '/p1_play'
    click_button('ROCK')
    visit '/p2_play'
    click_button('SCISSORS')
  end

  scenario 'Displays player\'s choice' do
    expect(page).to have_content('Misa has chosen... ROCK!')
  end

  scenario 'Displays player2\'s choice' do
    expect(page).to have_content('You have chosen... SCISSORS!')
  end

  scenario 'Annouce winner' do
    expect(page).to have_content('Misa wins!')
  end

  scenario 'Moves onto next round' do
    click_button('Next round!')
    expect(page).to have_content('↓Choose your move below↓')
  end
end
