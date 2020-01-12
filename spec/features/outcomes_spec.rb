feature 'Check Outcomes' do
  scenario 'Player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'name1 Wins!'
  end

  scenario 'Player loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content 'Computer Wins!'
  end

  scenario 'Its a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content "It's a draw"
  end
end
