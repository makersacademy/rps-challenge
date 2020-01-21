feature "Test name input" do
  scenario "puts name on screen" do
    sign_in_and_play
    expect(page).to have_content 'Jim'
  end
end
