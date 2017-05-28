feature 'infrastructure of result page is set up properly' do
  scenario 'player is taken to results page after choosing weapon' do
    sign_in_play_rock
    expect(page).to have_content 'You chose'
  end

  scenario 'player can see their choice on results page' do
    sign_in_play_rock
    expect(page).to have_content 'You chose Rock.'
  end

  scenario 'player can see choice of computer on results page' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_play_rock
    expect(page).to have_content 'The computer chose Scissors.'
  end
end

feature 'outcome of game is displayed correctly' do
  scenario 'player wins when player puts Rock and computer puts Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_play_rock
    expect(page).to have_content 'You won.'
  end

  scenario 'player loses when player puts Rock and computer puts Paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_play_rock
    expect(page).to have_content 'You lose.'
  end

  scenario 'player draws when player puts Rock and computer puts Rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_play_rock
    expect(page).to have_content 'You draw.'
  end

  scenario 'player draws when player puts Scissors and computer puts Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_play_scissors
    expect(page).to have_content 'You draw.'
  end
end

feature 'player can restart game' do
  scenario 'player can click New Game button to restart' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_play_rock
    click_button('New Game')
  end
end
