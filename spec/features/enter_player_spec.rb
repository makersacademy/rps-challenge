feature 'Player name entry', :type => :feature do
  scenario 'User creates a new Player name' do
    visit('/welcome')
    fill_in :names, :with => "Vince"
    click_button "Submit"
    expect(page).to have_content "Vince"
  end
end
