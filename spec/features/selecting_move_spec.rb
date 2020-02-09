feature 'Selecting move' do
  scenario 'select rock' do
    start_playing
    expect(page).to have_button :rock
  end
end