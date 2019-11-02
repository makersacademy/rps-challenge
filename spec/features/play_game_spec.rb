feature 'playing the game' do

  scenario 'player move is displayed' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Ginny played ROCK')
  end

  scenario 'computer move is displayed' do
    allow_any_instance_of(Randomizer).to receive(:move).and_return('ROCK')
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Computer played ROCK')
  end

  scenario 'winner is displayed' do
    allow_any_instance_of(Randomizer).to receive(:move).and_return('ROCK')
    sign_in
    click_button('SCISSORS')
    expect(page).to have_content('Computer WINS')
  end

  scenario 'draw is displayed' do
    allow_any_instance_of(Randomizer).to receive(:move).and_return('ROCK')
    sign_in
    click_button('ROCK')
    expect(page).to have_content('Nobody WINS')
  end
end
