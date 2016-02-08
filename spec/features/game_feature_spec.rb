feature "Rock Paper Scissors" do
  
  before do 
    visit('/')
    fill_in('player_name', :with => 'Marco')
    click_button('Start')
  end
  
  scenario 'Player can input his/her name' do
    expect(page).to have_content "Marco - Choose Wisely..."
  end
  
  scenario 'Player can choose RSP and see the result' do
    click_button('Rock')
    expect(page).to have_content "Rock"
  end
  
  scenario 'A match can be completed- Player 1 wins' do 
    allow_any_instance_of(Game).to receive(:result).and_return(1)
    click_button('Rock')
    expect(page).to have_content "Marco Wins!"
  end
  
  scenario 'A match can be completed- The Computer wins' do 
    allow_any_instance_of(Game).to receive(:result).and_return(2)
    click_button('Rock')
    expect(page).to have_content "The Computer Wins!"
  end
  
  scenario "A match can be completed- It's a Draw!" do 
    allow_any_instance_of(Game).to receive(:result).and_return("Draw!")
    click_button('Rock')
    expect(page).to have_content "This is a Draw!"
  end
end