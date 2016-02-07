feature "Player can make a choice" do
  scenario "and see the game result" do
    make_choice_player1
    selector = find('h2.second_player').text
    case selector
      when /Rock/
        expect(page).to have_content('Result of the game is DRAW')
      when /Paper/
        expect(page).to have_content('Iryna LOST')
      else
        expect(page).to have_content('Iryna WON')
    end
  end
end

feature "Player can make a choice" do
  scenario "and on results page see it's own choice" do
    make_choice_player1
    expect(page).to have_content(/Player1: Iryna's choice is Rock/)
  end
end

feature "Player can make a choice" do
  scenario "and on results page see opponent's choice" do
    make_choice_player1
    expect(page).to have_content(/Player2: (.*)'s choice is (.*)/)
  end
end