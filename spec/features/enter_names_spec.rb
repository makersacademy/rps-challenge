feature "Enter names" do
  scenario "Players enter their names and it prints it on the screen" do
    sign_in_and_play
    expect(page).to have_content 'Jordan... Select your weapon'
  end
end
