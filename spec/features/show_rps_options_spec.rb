require 'spec_helper'

feature 'Show options Rock Paper Scissor' do
  scenario 'has button Rock' do
    sign_in_and_play
    find_button('rock').click
  end

  scenario 'has button Paper' do
    sign_in_and_play
    find_button('paper').click
  end

  scenario 'has button Scissors' do
    sign_in_and_play
    find_button('scissors').click
  end
end
