feature '#register' do
  scenario 'name of player on index page' do
    fill_in :player_name, with: "Name"
    click_button 'Submit'
    expect(page).to have_content("Hi, Name. Rock, paper, scissors?")
  end
end
