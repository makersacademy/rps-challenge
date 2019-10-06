feature 'RPS options' do

  scenario 'players have 3 options to choose from' do
    visit('/')
    fill_in('Name', with: 'Dom')
    click_button "Submit"
    expect(page).to have_css('RPS')
  end

end
