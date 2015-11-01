require 'spec_helper'

feature 'show game winner' do
  scenario 'rock against paper' do
    srand(1)
    make_choice('rock')
    expect(page).to have_content 'Computer won!'
  end
end
