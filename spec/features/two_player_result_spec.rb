describe "RPS", type: :feature do
  it "Rock beats scissors" do
    sign_in_two_player
    click_button 'Scissors'
    click_button 'Rock'
    expect(page).to have_content "Jess wins"
  end

  it "Paper beats rock" do
    visit '/'
    click_button '2player'
    fill_in 'player_one_name', with: 'Jodi'
    fill_in 'player_two_name', with: 'Jess'
    click_button 'Submit'
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content "Jess wins"
  end

  it "Rock beats paper" do
    visit '/'
    click_button '2player'
    fill_in 'player_one_name', with: 'Jodi'
    fill_in 'player_two_name', with: 'Jess'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Paper'
    expect(page).to have_content "Jodi wins"
  end

  it "draw if both users pick the same" do
    visit '/'
    click_button '2player'
    fill_in 'player_one_name', with: 'Jodi'
    fill_in 'player_two_name', with: 'Jess'
    click_button 'Submit'
    click_button 'Scissors'
    click_button 'Scissors'
    expect(page).to have_content "how boring"
  end
end
