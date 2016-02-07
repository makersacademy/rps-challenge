feature "Rock Paper Scissors" do
  
  scenario 'Player can input his/her name' do
    visit('/')
    fill_in('player_1', :with => 'Marco')
    click_button('Start')
    expect(page).to have_content "Marco - Choose Wisely..."
  end
  
  scenario 'Player can choose RSP and see the result' do
    visit('/')
    fill_in('player_1', :with => 'Marco')
    click_button('Start')
    click_button('Rock')
    expect(page).to have_content "Rock"
  end
  
  scenario 'A match can be completed' do 
    visit('/')
    fill_in('player_1', :with => 'Marco')
    click_button('Start')
    click_button('Rock')
    expect(page).to have_content "Round Finished!"
  end
end