feature 'Testing names' do

  scenario '1 player can input their names' do
    visit('/')
    fill_in('Name', with: 'Dom')
    click_button "Submit"
    expect(page).to have_content 'Dom vs THE CHAMPION'
  end

end
