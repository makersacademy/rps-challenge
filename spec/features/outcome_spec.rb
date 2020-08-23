feature 'three possible outcomes' do
  scenario 'user wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Dummy wins'
  end

  scenario 'user loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'The computer has won...'
  end

  scenario "it's a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content "It's a draw!"
  end
end
