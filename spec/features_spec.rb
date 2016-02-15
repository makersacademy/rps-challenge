feature 'Features' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'player can enter name' do
    sign_in_and_play
    expect(page).to have_content('Welcome, Marketeer!')
  end


  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario 'player can choose a weapon' do
    sign_in_and_play
    click_button('Spock')
    expect(page).to have_content('Marketeer, you chose Spock.')
  end

  scenario 'computer can choose a weapon' do
    $computer_weapon = nil
    sign_in_and_play
    click_button('Spock')
    visit('/result')
    expect($computer_weapon).not_to eq nil
  end

  scenario 'can return a player win result' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Scissors)
    sign_in_and_play
    click_button('Spock')
    visit('/result')
    expect(page).to have_content('The winner is: Marketeer')
  end

  scenario 'can return a computer win result' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Spock)
    sign_in_and_play
    click_button('Scissors')
    visit('/result')
    expect(page).to have_content('The winner is: The computer')
  end

  scenario 'can return a nobody win result' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:Spock)
    sign_in_and_play
    click_button('Spock')
    visit('/result')
    expect(page).to have_content('The winner is: Nobody')
  end

end
