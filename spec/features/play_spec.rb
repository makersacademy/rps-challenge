require 'spec_helper'

feature 'allow choice to lead to a result' do
  scenario 'choosing rock button' do
    sign_in_and_play
    click_button "rock"
    @game = Game.instance
    case @game.computer.choice
    when :rock
      expect(page).to have_content "It's a draw!"
    when :paper
      expect(page).to have_content "Malinna, you lost this time."
    when :scissors
      expect(page).to have_content "Malinna, you are the winner!"
    end
  end
end
