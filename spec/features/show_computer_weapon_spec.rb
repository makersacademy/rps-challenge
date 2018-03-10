require 'spec_helper'

feature "shows computer's weapon" do

  scenario 'computer randomly picks rock' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return 'rock'
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Computer picked rock!')
  end
end
