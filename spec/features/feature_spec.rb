require_relative '../spec_helper.rb'

feature 'Starting a new game,' do

  scenario 'I am asked to enter my name.' do
    visit '/'
    expect(page).to have_content "Please enter your name."
  end

end

