require_relative '../web_helper'

feature 'It has three choices' do
  scenario 'Rock can be chosen' do
    sign_in
    expect(page).to have_content "Rock"
  end
  
  scenario 'Paper can be chosen' do
    sign_in
    expect(page).to have_content "Paper"
  end

  scenario 'Scissors can be chosen' do
    sign_in
    expect(page).to have_content "Scissors"
  end
end

