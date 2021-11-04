feature 'Enter names' do

  scenario 'can enter and save name 1' do
    sign_in_and_play_2_player
    expect(page).to have_content 'Ben'
  end

  scenario 'can enter and save name 2' do
    sign_in_and_play_2_player
    expect(page).to have_content 'Bethan'
  end

  scenario 'player 2 defaults to cpu if left blank' do
    visit('/')
    fill_in :p1_name, with: 'Ben'
    click_button 'Submit'
    expect(page).to have_content 'CPU'
  end

end