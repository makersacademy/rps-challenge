require './rps_game.rb'

feature 'Computer chooses a random shape' do
  scenario 'Chooses a rock' do
    allow_any_instance_of(Computer).to receive(:play_hand).and_return(:rock)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer threw: Rock"
  end

  scenario 'Chooses scissors' do
    allow_any_instance_of(Computer).to receive(:play_hand).and_return(:paper)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer threw: Paper"
  end

  scenario 'Chooses paper' do
    allow_any_instance_of(Computer).to receive(:play_hand).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer threw: Scissors"
  end
end
