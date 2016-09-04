feature 'playing the game' do
  scenario 'choosing an option from the list' do
    visit('/')
    fill_in(:player_name, with: 'John')
    click_button('Play')
    # => user shpould be provided with 3 images to choose from
  end

end
