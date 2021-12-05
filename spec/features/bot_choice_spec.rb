feature "Bot's turn" do
  scenario 'bot picks rock' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    click_button('Rock')
    expect(page).to have_content("Bot's choice:")
  end
end
