feature "Testing entering player name" do
  scenario "Player can enter and submit name" do
    enter_name_click_submit
    expect(page).to have_content 'Peter vs. Computer'
  end
end
