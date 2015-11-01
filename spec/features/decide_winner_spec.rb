require 'spec_helper'

feature 'decide game winner' do
  scenario 'rock against paper' do
    srand(1)
    make_choice('rock')
    expect(page).to have_content 'Computer won!'
  end

  scenario 'rock against scissors' do

  end

  scenario 'paper against scissors' do

  end

  scenario 'rock vs rock' do

  end

end
