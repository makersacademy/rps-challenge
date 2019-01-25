require 'capybara/dsl'
require 'selenium-webdriver'

feature RPSServer do
  scenario 'client makes get request to root' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'client enters name at root and clicks submit' do
    visit_root_sign_in_as_habakkuk
    expect(page).to have_content 'Habakkuk'
    expect(page).to have_css('span.name')
    # Use expect(page).to have_css('#player_name') to locate by id
  end

  scenario 'client plays rock' do
    visit_root_sign_in_as_habakkuk
    click_button 'Rock'
    expect(page).to satisfy { |page|
      page.has_content? 'Habakkuk' or
      page.has_content? 'Computer'
    }
  end
end
