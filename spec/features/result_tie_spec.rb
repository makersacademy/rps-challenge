feature 'Result page: tie game' do

  before(:each) do
    sign_in_and_play
    allow(RPS.game.p2).to receive(:choose_random).and_return('ROCK')
    allow(RPS.game.p2).to receive(:move).and_return('ROCK')
    click_button('ROCK')
    visit '/result'
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
