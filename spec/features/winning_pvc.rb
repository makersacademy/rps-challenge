require 'spec_helper'

describe 'computer choice and winning' do

  scenario 'pc generates random weapon and winner is decided' do
    sign_in_pvc
    click_button 'Rock'
    click_button 'Generate computer choice'
    expect(page).to have_content 'Computer chooses'
    expect(page).to have_button 'Play again'
  end
end
