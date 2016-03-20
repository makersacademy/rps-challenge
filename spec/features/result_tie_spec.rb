feature 'Result page: tie game' do

  before(:each) do
    enter_game
    both_sign_in_and_enter_game
    visit '/p1_play'
    click_button('ROCK')
    visit '/p2_play'
    click_button('ROCK')
  end

  scenario '0.0. Displays player\'s choice' do
    expect(page).to have_content('Misa has chosen... ROCK!')
  end

  scenario '0.1. Displays computer\'s choice' do
    expect(page).to have_content('Clems has chosen... ROCK!')
  end

  scenario '0.2. Annouce tie when p1 and p2 choose same move' do
    expect(page).to have_content('Misa and Clems tie!')
  end
end
