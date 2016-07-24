feature 'Game type' do
  
  scenario 'provides an option to choose one-player or 2-player game' do
    visit('/')
    expect(page).to have_content("Please choose the type of game you would like to play:")
    expect(page).to have_field('one_player')
  end

end