feature 'Player enters name' do
  scenario 'Inputs name and clicks OK' do
    visit('/')
    fill_in :name, with: "Joe"
    click_button 'Play'
    expect(page).to have_content "Joe"
  end
end
