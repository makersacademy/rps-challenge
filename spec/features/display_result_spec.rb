feature 'Display result' do
  before do
    register_and_play
  end
  
  scenario 'player 1 wins' do
    select 'Rock', from: 'weapon'
    allow(Game.instance.player_2).to receive(:weapon).and_return(:scissors)
    click_button 'Submit'
    expect(page).to have_content("Sheldon wins!")
  end

  scenario 'it is a tie' do
    select 'Paper', from: 'weapon'
    allow(Game.instance.player_2).to receive(:weapon).and_return(:paper)
    click_button 'Submit'
    expect(page).to have_content("It's a tie!")
  end

  scenario 'player 2 wins' do
    select 'Scissors', from: 'weapon'
    allow(Game.instance.player_2).to receive(:weapon).and_return(:rock)
    click_button 'Submit'
    expect(page).to have_content("Computer wins!")
  end
end
