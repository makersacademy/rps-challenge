feature 'Show result' do

  scenario 'Player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    choose('paper')
    click_button('Submit')
    expect(page).to have_content('You won!')
  end

  scenario 'Computer wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in
    choose('paper')
    click_button('Submit')
    expect(page).to have_content('The computer won!')
  end

  scenario 'Game is tied' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in
    choose('rock')
    click_button('Submit')
    expect(page).to have_content('It\'s a tie!')
  end

end
