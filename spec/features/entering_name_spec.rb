feature 'Enter name' do
  scenario '-Input name and return to screen' do
    visit('/')
    fill_in :player_1, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_content "Welcome, Sarah"
  end
end
