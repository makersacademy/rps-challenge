feature "Enter names" do
  scenario "submitting names" do
    visit('/')
    fill_in :player_name, with: "Ruby"
    click_button "let's play :)"
    expect(page).to have_content 'rock paper scissor'
  end
end
