RSpec.feature "One Play Game Play:", :type => :feature do

  let(:player1) { double:Player, name: "player 1"}
  let(:player2) { double:Player, name: "player 2"}

  scenario 'play game' do

    visit '/'
    sign_in_one_player_game(player1.name)
    srand SEED

    choose('lizard')
    click_button('Play')

    expect(page).to have_content("You played lizard")
    expect(page).to have_content("#{Game.instance.player2.name} played lizard")
    expect(page).to have_content("Draw")
    expect(page).to have_content("Your points: 0")
    expect(page).to have_content("#{Game.instance.player2.name}'s points: 0")

    choose('rock')
    click_button('Play')

    expect(page).to have_content("You played rock")
    expect(page).to have_content("#{Game.instance.player2.name} played spock")
    expect(page).to have_content("Your points: 0")
    expect(page).to have_content("#{Game.instance.player2.name}'s points: 1")
    expect(page).not_to have_content("Draw")

    choose('paper')
    click_button('Play')

    expect(page).to have_content("You played paper")
    expect(page).to have_content("#{Game.instance.player2.name} played spock")
    expect(page).to have_content("Your points: 1")
    expect(page).to have_content("#{Game.instance.player2.name}'s points: 1")
    expect(page).not_to have_content("Draw")

    choose('rock')
    click_button('Play')

    expect(page).to have_content("You played rock")
    expect(page).to have_content("#{Game.instance.player2.name} played rock")
    expect(page).to have_content("Your points: 1")
    expect(page).to have_content("#{Game.instance.player2.name}'s points: 1")
    expect(page).to have_content("Draw")

    click_button('Play')
    expect(page).to have_content("You must select something")
    expect(page).to have_button("Go Back")
    click_button('Go Back')


    click_button('New Game')
    expect(page).to have_content("Your points: 0")
    expect(page).to have_content("Computer's points: 0")
    expect(page).not_to have_content("Draw")
    expect(page).not_to have_content("You played")
    expect(page).not_to have_content("Computer played")



  end

end
