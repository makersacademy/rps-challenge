# spec/features/fist_battle_spec.rb

feature 'Rock Paper Scissors Battle' do
  scenario 'attack with Rock' do
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('Miho played ROCK')
  end
end

feature 'Playing RPS' do
  scenario 'winning the game' do
    allow_any_instance_of(NPC).to receive(:weapon).and_return('SCISSORS')
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('WINNER!')
  end
end

feature 'Playing RPS' do
  scenario 'losing the game' do
    allow_any_instance_of(NPC).to receive(:weapon).and_return('PAPER')
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('LOST')
  end
end

feature 'Playing RPS' do
  scenario 'drawing the game' do
    allow_any_instance_of(NPC).to receive(:weapon).and_return('ROCK')
    sign_in_and_play
    click_button('ROCK')
    expect(page).to have_content('DRAW!')
  end
end
