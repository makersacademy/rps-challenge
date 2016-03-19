feature 'Result page' do

  moves = Player::MOVES

  before(:each) do
    sign_in_and_play
  end

  scenario '0.0. Displays player\'s choice' do
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Misa has chosen... ROCK!')
  end

  scenario '0.1. Displays computer\'s choice' do
    allow(RPS.game.p2).to receive(:choose_random).and_return('ROCK')
    allow(RPS.game.p2).to receive(:move).and_return('ROCK')
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Computer has chosen... ROCK!')
  end

  scenario '0.2. Annouce tie when p1 and p2 choose same move' do
    allow(RPS.game.p2).to receive(:choose_random).and_return('ROCK')
    allow(RPS.game.p2).to receive(:move).and_return('ROCK')
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Misa and Computer tie!')
  end

  scenario '0.3. Annouce winner' do
    allow(RPS.game.p2).to receive(:choose_random).and_return('SCISSORS')
    allow(RPS.game.p2).to receive(:move).and_return('SCISSORS')
    click_button('ROCK')
    visit '/result'
    expect(page).to have_content('Misa wins')
  end
end
