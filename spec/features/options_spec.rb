feature "Game page" do

  scenario "Lets the player choose 'Rock' option" do
    visit('/')
    fill_in :name_1, with: 'Dave'
    fill_in :name_2, with: 'Mittens'
    click_button 'start'
    expect(page).to have_button('rock')
  end

end
