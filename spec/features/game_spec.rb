require './spec/features/web_helpers.rb'

feature "Set-up" do
  scenario "A marketeer can register their name and get a confirmation message" do
    register_player
    expect(page).to have_content "Welcome Wayne!"
  end
end

feature "Player can click one of three buttons" do
  scenario "Player can click Rock" do
    register_player
    click_button('Rock')
    # select('Rock', from: 'selection')
    # click_button('Submit')
    expect(page).to have_content "You chose Rock"
  end

  scenario "Player can click Paper" do
    register_player
    click_button('Paper')
    expect(page).to have_content "You chose Paper"
  end

  scenario "Player can click Scissors" do
    register_player
    click_button('Scissors')
    expect(page).to have_content "You chose Scissors"
  end
end

feature "Playing against the computer" do
  scenario "Computer displays a choice" do
    register_and_choose
    expect(page).to have_content "The computer chose Scissors"
  end
end
