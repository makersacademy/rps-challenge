feature 'name form' do
  scenario 'checks name entered equales name from form' do
    visit '/'
    fill_in 'name', with: "Luke"
    click_button 'Play'

    expect(page).to have_content "Welcome Luke"
  end
end 