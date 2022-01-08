# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

#Player sees options
#Player can choose option
#Player can see result
#Computer can choose a shape
#Computers choice is printed to the result page
#Computer can choose a random (R, P, S)

feature 'Game play' do
  let(:game) { instance_double('Game') }

  before do
    enter_name_click_submit
  end
  
  scenario 'Player will be presented with choice buttons (R, P, S)' do
    find_button('Rock')
    find_button('Paper')
    find_button('Scissors')
  end

  scenario 'Player can choose Rock, Paper or Scissors and be taken to result page' do
    click_button 'Rock'
    expect(page).to have_content 'Peter chose Rock'
  end

  context 'On result page' do
    scenario 'Player can see computers choice' do
      click_button 'Rock'
      comp_choice = find("#comp_choice").text
      expect(comp_choice_outcomes).to include(comp_choice) 
    end

    scenario 'Player can click next round button to return to play view' do
      click_button 'Rock'
      click_button 'next round'
      expect(page).to have_content 'Peter vs. Computer'
    end
  end
end