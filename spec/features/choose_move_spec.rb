feature 'Choose move' do
  scenario 'Display message to choose move on page load' do
    visit '/'
    fill_in 'name', with: 'Veronica'
    click_button "Let's go"
    expect(page).to have_content('Choose your move')
  end
end