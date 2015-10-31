require 'spec_helper'

feature 'computer can randomly chose option' do
   let(:RockPaperScissors) {double('RockPaperScissors', computer_selection: 'Paper')}

  scenario 'computer selects option' do
    # RockPaperScissors.any_instance.stub(:computer_selection).and_return('Paper')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Computer randomly choses attack method Paper")

  end
end
