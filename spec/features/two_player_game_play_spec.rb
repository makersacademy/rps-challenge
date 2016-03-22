RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

RSpec.feature "Two Player Game Play:", :type => :feature do

  let(:player1) { double:Player, name: "player 1"}
  let(:player2) { double:Player, name: "player 2"}

  scenario 'play game' , :broken => false do

    Game.reset

    visit '/'
    two_player_sign_in(player1.name, player2.name)

    in_browser(:one) do
      choose('scissors')
      click_button('Play')

      expect(page).to have_content("Waiting for other player")
      expect(page).to have_button("Check")
      click_button('Check')
    end

    in_browser(:two) do
      choose('scissors')
      click_button('Play')

      expect(page).to have_content("Waiting for other player")
      expect(page).to have_button("Check")
      click_button('Check')
    end

    in_browser(:one) do
      click_button('Check')
      expect(page).to have_content("You played scissors")
      expect(page).to have_content("#{Game.instance.player2.name} played scissors")
      expect(page).to have_content("Draw")
      expect(page).to have_content("Your points: 0")
      expect(page).to have_content("#{Game.instance.player2.name}'s points: 0")

      choose('rock')
      click_button('Play')
      click_button('Check')
    end

    in_browser(:two) do
      expect(page).to have_content("You played scissors")
      expect(page).to have_content("#{Game.instance.player1.name} played scissors")
      expect(page).to have_content("Draw")
      expect(page).to have_content("Your points: 0")
      expect(page).to have_content("#{Game.instance.player1.name}'s points: 0")

      choose('paper')
      click_button('Play')
      click_button('Check')
    end

    in_browser(:one) do
      click_button('Check')
      expect(page).to have_content("You played rock")
      expect(page).to have_content("#{Game.instance.player2.name} played paper")
      expect(page).not_to have_content("Draw")
      expect(page).to have_content("Your points: 0")
      expect(page).to have_content("#{Game.instance.player2.name}'s points: 1")
    end

    in_browser(:two) do
      expect(page).to have_content("You played paper")
      expect(page).to have_content("#{Game.instance.player1.name} played rock")
      expect(page).not_to have_content("Draw")
      expect(page).to have_content("Your points: 1")
      expect(page).to have_content("#{Game.instance.player1.name}'s points: 0")
    end
  end
end
