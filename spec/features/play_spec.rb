feature 'playing rock, paper, scissors' do

  before

  end

  it "should declare player 1 a winner if they have rock and player 2 has scissors" do
    visit ('/')
    fill_in :player_name, with: "Sophia"
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content("player 1 wins!")
  end

  it "should declare player 2 a winner if they have scissors and player 1 has paper" do
    visit ('/')
    fill_in :player_name, with: "Sophia"
    click_button 'Submit'
    click_button 'scissors'
    expect(page).to have_content("computer wins!")
  end

  it "should declare player 1 a winner if they have paper and player 2 has rock" do
    visit ('/')
    fill_in :player_name, with: "Sophia"
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content("player 1 wins!")
  end

end
    


