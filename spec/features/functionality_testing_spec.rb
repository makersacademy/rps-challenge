require "./rps.rb"

RSpec.feature "Username", :type => :feature do
  scenario "User inputs name" do
    sign_in_and_play
    expect(page).to have_content 'Welcome Thrash!'
  end
end

RSpec.feature "Choice", :type => :feature do

  scenario 'checking for "Rock" option' do
    sign_in_and_play
    visit('/plays')
    choose(:Rock)
    click_button('Lets Play')
    expect(page).to have_content 'You chose Rock.'
  end

  scenario 'checking for "Paper" option' do
    sign_in_and_play
    visit('/plays')
    choose(:Paper)
    click_button('Lets Play')
    expect(page).to have_content 'You chose Paper.'
  end

  scenario 'checking for "Scissors" option' do
    sign_in_and_play
    visit('/plays')
    choose(:Scissors)
    click_button('Lets Play')
    expect(page).to have_content 'You chose Scissors.'
  end

  scenario "making a selection" do
    sign_in_and_play
    make_selection_rock
    expect(page).to have_content 'You chose Rock.'
  end
end

RSpec.feature "Result", :type => :feature do
  scenario "allowing user to select another game" do
    sign_in_and_play
    make_selection_rock
    expect(page).to have_content 'Would you like to play again?'
  end

  scenario "user and computer pick same choice" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
    make_selection_rock
    expect(page).to have_content("So close! Its a Draw!")
  end

  scenario "user should be able to lose" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return 'Paper'
    make_selection_rock
    expect(page).to have_content("You were beaten by the computer.")
  end

  scenario "user should be able to win" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
    make_selection_rock
    expect(page).to have_content("You beat the computer!")
  end
end