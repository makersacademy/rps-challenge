require "spec_helper"

feature "Can register name" do
  scenario "takes input name and displays it on the next page" do
    visit "/"
    expect(page).to have_content "Please enter your name so you can start playing Rock, Paper, Scissors" 
    name = "Gon"
    fill_in "name", with: name
    click_button "continue"
    expect(page).to have_content "Welcome #{name}"
  end
  scenario "registers default name if none given" do
    visit "/"
    click_button "continue"
    expect(page).to have_content "Welcome Player"
  end
end
feature "playing a game of RPS," do
  scenario "can start a game" do
    visit "/"
    click_button "continue"
    click_link "Start Game"
    expect(page).to have_content "Hi Player"
    expect(page).to have_content "Please choose Rock, Paper or Scissors"
  end
  scenario "can choose rock" do
    c = (double :cpu, choice: "Rock")
    allow(CPU).to receive(:new) { c }
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Rock"
    expect(page).to have_content "draw"
  end
  scenario "can choose scissors" do
    c = (double :cpu, choice: "Rock")
    allow(CPU).to receive(:new) { c }
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Scissors"
    expect(page).to have_content "lose"
  end
  scenario "can choose paper" do
    c = (double :cpu, choice: "Rock")
    allow(CPU).to receive(:new) { c }
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Paper"
    expect(page).to have_content "win"
  end
  scenario "can play again afterwards" do
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Rock"
    expect(page).to have_content "Play Again"
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Paper"
    expect(page).to have_content "Play Again"
    visit "/"
    click_button "continue"
    click_link "Start Game"
    click_link "Scissors"
    expect(page).to have_content "Play Again"
  end
end