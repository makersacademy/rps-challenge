feature 'decisions are shown' do
  scenario '' do
    visit '/'
    fill_in :player_name, with: "Hannah"
    click_button "Submit"
    click_button "I'm Ready!"
    click_button "Rock"
    expect(page).to have_content "You chose: Rock."
  end
end
