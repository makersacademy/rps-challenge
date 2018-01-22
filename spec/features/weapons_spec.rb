feature 'Select weapon' do
  scenario 'Player can view weapons' do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Player chooses weapon and receives confirmation' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Hulk Hogan chose rock")
  end

  scenario 'Computer chooses weapon and player gets confirmation' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Computer chose scissors")
  end

end
