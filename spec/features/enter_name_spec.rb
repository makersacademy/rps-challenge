feature 'entering a name' do
  scenario 'takes a name' do
    visit('/')
    fill_in 'name', with: "Emile"
    click_button 'Submit'
    expect(page).to have_content 'Emile'
  end
end
