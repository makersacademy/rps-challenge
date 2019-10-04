feature "Select a move" do
  scenario 'can select a move' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Olly selected Rock'
  end
end