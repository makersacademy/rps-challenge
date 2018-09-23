feature do
  scenario 'check can fill in name of player' do
    visit('/')
    fill_in :name, with: "Willow"
    find_button('Play!').click
    find_button('rock').click
    expect(page).to have_content("Willow : Computer")
  end
end
