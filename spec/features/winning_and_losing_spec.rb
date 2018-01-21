feature 'Winning and Losing' do
  scenario 'Player loses and receives confirmation' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:paper)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You lost!")
  end

  scenario 'Player wins and receives confirmation' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You won!")
  end
end
