
feature "Testing functionality" do
  scenario 'Choses scissors' do
    submit_and_play
    click_button 'Scissors'
    expect(page).to have_content ("Scissors")
  end

  scenario 'Choses rock' do
    submit_and_play
    click_button 'Rock'
    expect(page).to have_content ("Rock")
  end

  scenario 'Choses paper' do
    submit_and_play
    click_button 'Paper'
    expect(page).to have_content ("Paper")
  end
end