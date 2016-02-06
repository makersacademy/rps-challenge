
feature 'starting the game' do

  scenario 'the player decides to play' do

    visit('/')
    fill_in :player_one, with: "S.Z."
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "S.Z. move: paper"

  end

  scenario 'the computer is also playing' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    visit('/')
    fill_in :player_one, with: "S.Z."
    click_button 'play'
    click_button 'paper'
    expect(page).to have_content "S.Z. move: paper"
    expect(page).to have_content "CPU move: scissors"
  end

end
