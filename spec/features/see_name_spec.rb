feature 'Enter name and see it displayed' do
  scenario "Visit homepage and enter name" do
    visit '/'
    fill_in 'name', with: 'Andy'
    click_button 'Submit'
    expect(page).to have_content 'Hi Andy, choose a game below...'
  end
end
