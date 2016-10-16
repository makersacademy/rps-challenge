require_relative 'web_helper'
require './app'
require './spec/spec_helper'

feature 'Enter names' do
  scenario 'submit player 1s name' do
    sign_in_and_play
    expect(page).to have_text('Timon')
  end
end
