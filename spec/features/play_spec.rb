require_relative '../../app'

feature 'play', type: :feature do
  scenario 'confirms that you played Rock' do
    log_in_and_start
    click_on 'Rock'
    expect(page).to have_content 'Steve played Rock!'
  end
  scenario 'confirms that you played Paper' do
    log_in_and_start
    click_on 'Paper'
    expect(page).to have_content 'Steve played Paper!'
  end
  scenario 'confirms that you played Scissors' do
    log_in_and_start
    click_on 'Scissors'
    expect(page).to have_content 'Steve played Scissors!'
  end
end