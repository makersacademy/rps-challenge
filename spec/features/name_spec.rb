feature 'Name input' do

  scenario 'Two players can enter their names' do
    two_players
    expect(page).to have_content("Symion")
    expect(page).to have_content("Sandy")
  end

  scenario 'One player can enter their name' do
    one_player
    expect(page).to have_content("Symion")
    expect(page).to have_content("Computer")
  end
  
end
