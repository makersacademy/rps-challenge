require './app.rb'

feature 'playing the game' do

  before do
    visit ('/')
    fill_in "players_name", with: "Pip"
    click_button "Submit!"
  end

  scenario 'see options rock, paper, or scissors' do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end

  scenario 'choose one of the options' do
    click_link "Rock"
    expect(page).to have_content "you chose Rock"
  end

  scenario 'computer choses an option' do
    srand(0)
    click_link "Rock"
    expect(page).to have_content "Computer chose Rock"
    # message = find(:css, "#computer").text
    # expect(messages).to inlcude message
  end
  scenario 'Player wins' do
    srand(0)
    click_link "Rock"
    expect(page).to have_content "You Draw!"
  end

def messages
  [:Rock, :Paper, :Scissors].map {|choice| "Computer chose #{computer_choice}" }
end
end
