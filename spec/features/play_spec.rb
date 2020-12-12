feature "play page" do
  scenario "submit button goes to /play" do
    click_and_submit
    expect(page).to have_button 'Rock'
  end
end