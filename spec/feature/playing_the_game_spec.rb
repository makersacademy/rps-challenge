feature 'Playing the game' do
  before(:each) do
    allow_any_instance_of(Computer).to receive(:choose).and_return(:scissors)
    sign_in
  end

  scenario 'player can win' do
    click_button 'rock'
    expect(page).to have_content 'rock beats scissors. test name wins!'
  end

  scenario 'player can lose' do
    click_button 'paper'
    expect(page).to have_content 'scissors beats paper. Computer wins!'
  end

  scenario 'players can tie' do
    click_button 'scissors'
    expect(page).to have_content 'This test really should not pass'
  end
end
