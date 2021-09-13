describe 'able to play RPS' do
  let(:computer_choice) { 'scissors' }

  scenario 'can make a choice' do
    get_to_game
    fill_in :choice, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content "rock"
  end

  scenario 'can win game' do
    game = Game.new('rock', 'Bob', computer_choice)
    expect(game.results).to eq 'Bob wins!'
  end

  scenario 'can lose game' do
    get_to_game
    fill_in :choice, with: 'rock'
  end
end