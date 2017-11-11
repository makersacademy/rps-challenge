describe 'RockPaperScissors', :type => :feature do

  it 'takes names and shows them on screen' do
    sign_in_and_play_one_player
    expect(page).to have_content "Hi Joe!"
  end

  it 'Player 1 gets confirmation of attacking Player 2' do
    sign_in_and_play_one_player
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    expect(page).to have_content "Joe chose rock!"
  end

  it "computer chooses something at random" do
    sign_in_and_play_one_player
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    expect(page).to have_content "Computer chose"
  end

  it "computer chooses something at random" do
    sign_in_and_play_one_player
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    # click_button('S')
  end


end
