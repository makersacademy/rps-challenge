require_relative 'web_helpers'

feature 'Begin Game' do
  scenario 'Check if message is as expected' do
    submit_name_and_play
    expect(page).to have_content "Choose rock, paper or scissors."
  end

  scenario 'User Chooses rock, paper or scissors' do
    submit_name_and_play
    fill_in :user_chooses, with: 'rock'
    click_button 'GO!'
    expect(page).to have_content 'You chose rock.'
  end

end
