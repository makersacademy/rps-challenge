# As a user
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'play a RPS game' do
  # The marketeer will be presented the choices (rock, paper and scissors)
  scenario 'see all the shapes available' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  # The marketeer can choose one option
  scenario 'chose one shape' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You have chose Paper')
  end

  # The computer chose an option
  scenario 'computer chooses a shape ' do
    srand 1234
    sign_in_and_play
    click_button('Rock')
    shape = find('div').text.split.last
    expect(page).to have_content('Computer has chose Scissors')
  end


end
