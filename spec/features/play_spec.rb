feature 'Game play' do
  let(:game) { instance_double('Game') }
  let(:computer) { instance_double('Computer') }

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

  scenario 'Computer can make a random choice' do
    allow_any_instance_of(Computer).to receive(:move).and_return("Paper")
    click_button 'Rock'
    expect(page).to have_content 'Computer chose Paper'
  end

  context 'On result page' do
    scenario 'Player can see computers choice' do
      click_button 'Rock'
      comp_choice = find("#comp_choice").text
      expect(comp_choice_outcomes).to include(comp_choice) 
    end

    scenario 'Player can click next round button to return to play view' do
      click_button 'Rock'
      click_button 'play again'
      expect(page).to have_content 'Peter vs. Computer'
    end

    context 'When the player has won the round' do
      scenario 'Player can see that they won the round' do
        allow_any_instance_of(Computer).to receive(:move).and_return("Paper")
        click_button 'Scissors'
        expect(page).to have_content 'Peter won this round!'
      end
    end

    context 'When the computer has won the round' do
      scenario 'Player can see that the computer won the round' do
        allow_any_instance_of(Computer).to receive(:move).and_return("Rock")
        click_button 'Scissors'
        expect(page).to have_content 'Computer won this round!'
      end
    end
  end
end
