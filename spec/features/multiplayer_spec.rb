feature "Rock Paper Scissors - Multiplayer" do
  
  before do 
    visit('/')
     click_button('Multiplayer')
  end
  
  scenario 'It is possible to choose multiplayer' do
    expect(page).to have_content "Multi Player"
  end
  
  scenario 'Players can choose player_1 and have a name' do
    select('Player 1', :from => 'Choose Player')
    fill_in('player_name', :with => 'Marco')
    click_button('Start')
    expect(page).to have_content "Marco, choose wisely:"
  end
  
  scenario 'Players can choose player_2 and have a name' do
    select('Player 2', :from => 'Choose Player')
    fill_in('player_name', :with => 'Serena')
    click_button('Start')
    expect(page).to have_content "Serena, choose wisely:"
  end
end

feature 'players can play a multiplayer match' do
  
  before do 
    visit('/')
    click_button('Multiplayer')
    select('Player 1', :from => 'Choose Player')
    fill_in('player_name', :with => 'Marco')
    click_button('Start')
    click_button('Rock')
    click_button('See result')
  end
  
  scenario 'Players have to wait for their opponent to choose' do 
    expect(page).to have_content "Waiting for your opponent!"
  end
  
  scenario 'When both players have chosen the winner is established' do
    visit('/')
    click_button('Multiplayer')
    select('Player 2', :from => 'Choose Player')
    fill_in('player_name', :with => 'Serena')
    click_button('Start')
    click_button('Paper')
    click_button('See result')
    expect(page).to have_content "Serena WINS!"
  end
end