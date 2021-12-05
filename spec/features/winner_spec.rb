feature "Winner of the match announced" do
  scenario 'winner declared' do
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button('Play')
    click_button('Rock')
    expect(page).to have_content("wins!🥳")
  end
end
