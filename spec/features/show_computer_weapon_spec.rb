require 'spec_helper'

feature "shows computer's weapon of choice" do

  scenario 'computer randomly picks rock' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return :rock
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Computer picked rock!')
  end

  scenario 'computer randomly picks paper' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return :paper
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('Computer picked paper!')
  end

  scenario 'computer randomly picks scissors' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return :scissors
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('Computer picked scissors!')
  end

end
