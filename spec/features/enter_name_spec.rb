feature "Enter name" do
  scenario "submitting name" do
    visit('/')
    fill_in :player_name, with: "Ruby"
    click_button "let's play :)"
    expect(page).to have_content 'rock paper scissor'
  end
end
