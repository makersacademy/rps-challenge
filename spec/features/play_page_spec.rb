require 'spec_helper.rb'

feature 'choose attack type', :type => :feature do
  scenario 'P1 chooses Rock' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("James chose Rock")
  end

  scenario 'P1 chooses Scissors' do
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content("James chose Scissors")
  end

  scenario 'P1 chooses Paper' do
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content("James chose Paper")
  end
end
