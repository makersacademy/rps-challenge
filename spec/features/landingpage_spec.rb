feature "landingpage" do

  scenario "the player can enter their name in a form" do
    visit('/')
    fill_in('Player 1 Name', with: 'Deon')
    find_field('Player 1 Name').value
  end

end