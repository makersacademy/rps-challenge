feature "RPS Features" do

  scenario 'players can enter names, submit and see names on screen' do
    # sign_in_and_play
    visit('/')
    fill_in('player_one', with: 'Mick')
    fill_in('player_two', with: 'Keith')
    click_on('Submit')
    expect(page).to have_content('Mick')
    expect(page).to have_content('Keith')
  end

end
