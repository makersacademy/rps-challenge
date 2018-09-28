require_relative 'web_helpers'

feature 'Begin Game' do
  scenario 'Check if message is as expected' do
    submit_name_and_play
    expect(page).to have_content "Choose rock, paper or scissors."
  end

  scenario 'User chooses' do
    submit_name_and_play
    click_button 'ROCK!'
    expect(page).to have_content 'You chose ROCK!'
  end

  scenario 'User chooses' do
    submit_name_and_play
    click_button 'PAPER!'
    expect(page).to have_content 'You chose PAPER!'
  end

  scenario 'User chooses' do
    submit_name_and_play
    click_button 'SCISSORS!'
    expect(page).to have_content 'You chose SCISSORS!'
  end
end
