require_relative 'web_helpers'

feature 'Begin Game' do
  scenario 'Check if message is as expected' do
    submit_name_and_play
    expect(page).to have_content "Choose rock, paper or scissors."
  end
end
