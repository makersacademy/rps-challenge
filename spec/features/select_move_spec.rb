feature "Select a move" do
  scenario 'can select a move' do
    visit('/')
    fill_in :player_name, with: 'Olly'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'Olly and Finn selected Rock'
    expect(page).to have_content 'Jake selected'
  end
end