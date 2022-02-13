require_relative '../../app'

feature 'Play game' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  let(:selection) { double :selection, computer: 'Paper' }
  scenario "Player is given an option to choose 'Rock', 'Paper' or 'Scissors'" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario "Players selection is displayed" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You have chosen Rock'
  end

  scenario "Computers selection is generated and displayed" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "The Computer has chosen "
  end

  # scenario "The player wins" do
  #   sign_in_and_play
  #   click_button('Rock')
  #   # $selection.computer = 'Scissors'
  #   expect(page).to have_content "You win!"
  # end
end
