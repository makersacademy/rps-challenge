feature 'Computer selects a weapon' do
  scenario 'display computer\'s selection' do
    register_and_play
    select 'Rock', from: 'weapon'
    allow(Game.instance.player_2).to receive(:weapon).and_return(:paper)
    click_button 'Submit'
    expect(page).to have_content("Computer: Paper")
  end
end
