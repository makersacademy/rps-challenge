require'./app'

feature 'Select RPS' do
  it "presents can choose Rock from options" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    select "Rock", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Sandy result: rock')
    expect(page).to have_content('Player 2 result:')  
  end

  it "presents can choose Paper from options" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    select "Paper", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Sandy result: paper')
    expect(page).to have_content('Player 2 result:')  
  end

    it "presents can choose Scissor from options" do
    visit '/'
    fill_in :player_name, with: 'Sandy'
    click_button('Play!')
    select "Scissors", from: "selection"
    click_button('RPS!')
    expect(page).to have_content('Sandy result: scissors')
    expect(page).to have_content('Player 2 result:')  
  end

end