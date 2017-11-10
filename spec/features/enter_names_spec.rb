describe 'RockPaperScissors', :type => :feature do

  it 'takes names and shows them on screen' do
    visit '/'
    fill_in('player_1_name', with: 'Joe')
    click_button('Submit')
    expect(page).to have_content "Hi Joe!"
  end

  it 'Player 1 gets confirmation of attacking Player 2' do
    visit '/'
    fill_in('player_1_name', with: 'Joe')
    click_button('Submit')
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    expect(page).to have_content "You chose rock!"
  end

  it "computer chooses something at random" do
    visit '/'
    fill_in('player_1_name', with: 'Joe')
    click_button('Submit')
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    expect(page).to have_content "Computer chose"
  end

  it "computer chooses something at random" do
    visit '/'
    fill_in('player_1_name', with: 'Joe')
    click_button('Submit')
    fill_in('weapon', with: 'rock')
    click_button('Submit')
    expect(page).to have_content "win!"
  end


end
