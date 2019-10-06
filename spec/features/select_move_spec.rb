feature "Choose a move" do
  scenario 'can choose a move' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button "Let's go!"
    click_button 'Rock'
    expect(page).to have_content 'Olly chose Rock'
    expect(page).to have_content 'monster chose'
  end
end
