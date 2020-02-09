feature 'Enter name' do
  scenario 'submitting name' do
    visit '/'
    fill_in :player_name, with: "Foobar"
    click_button 'Go'
    expect(page).to have_content "Foobar"
  end
end