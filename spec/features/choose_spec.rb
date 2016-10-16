require 'spec_helper'

feature 'choosing rock, paper or scissors' do
  it 'should be possible to choose' do
    sign_in_and_play
    choose_scissors
    expect(page).to have_content 'You picked scissors!'
  end
end
