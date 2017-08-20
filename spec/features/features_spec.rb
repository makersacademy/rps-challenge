require 'spec_helper'
require_relative './web_helper'

feature "testing Game" do
  it "has a form on the homepage" do
    visit '/'
    expect(page).to have_field "player_1"
  end
  it "has a form on the homepage" do
    visit '/'
    expect(page).to have_field "player_2"
  end
  it "records name of player 1" do
    sign_in_and_play
    expect(page).to have_content 'Aloysius'
  end
  it "records name of player 2" do
    sign_in_and_play
    expect(page).to have_content 'Sebastian'
  end
  it "player 1 can select a move" do
    sign_in_and_play
    expect(page).to have_select "Move", options: ['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard']
  end
  it "player 2 can select a move" do
    sign_in_and_play
    choose_and_shoot
    expect(page).to have_content "#{@player_2} chooses"
  end
  it "displays a draw" do
    sign_in_and_play
    choose_and_shoot
    choose_and_shoot
    expect(page).to have_content "No one wins"
  end
  it "displays a win" do
    sign_in_and_play
    choose_and_shoot
    select("Spock", from: "Move")
    click_button "SHOOT!"
    expect(page).to have_content "#{@player_1} wins"
  end
  it "can play again" do
    sign_in_and_play
    choose_and_shoot
    choose_and_shoot
    click_link 'Play again'
    expect(page).to have_content "#{@player_1} chooses"
  end
  it "can start a new game" do
    sign_in_and_play
    choose_and_shoot
    choose_and_shoot
    click_link 'New game'
    expect(page).to have_field "player_1"
  end
end
