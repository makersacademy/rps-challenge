feature '1 player game' do

  before(:example) { sign_in }
  after(:example) { visit('/') }

  scenario 'solo player signs in' do
    expect(page).to have_content 'Chocolate Rain vs Random Ruby'
  end

  scenario 'player chooses rock' do
    choose('rock')
    click_on("Submit")
    expect(page).to have_content "#{Game.game.player_1.name} chose #{Game.game.player_1.print_choice}"
  end

  scenario 'player chooses paper' do
    choose('paper')
    click_on("Submit")
    expect(page).to have_content "#{Game.game.player_1.name} chose #{Game.game.player_1.print_choice}"
  end

  scenario 'player chooses scissors' do
    choose('scissors')
    click_on("Submit")
    expect(page).to have_content "#{Game.game.player_1.name} chose #{Game.game.player_1.print_choice}"
  end
  
  scenario 'result is decided' do
    choose('paper')
    click_on("Submit")
    expect(page).to have_content "The winner is"
  end

end
