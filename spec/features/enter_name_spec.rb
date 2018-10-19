
feature "entering name" do
  scenario "user can submit name and see it on screen" do
    visit '/'
    fill_in :player_name, with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'James'
  end
end
