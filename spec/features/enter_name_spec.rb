feature 'Enter names' do
  scenario 'submit player name' do
    enter_and_play
    expect(page).to have_content 'Dave vs. CPU' # Expect to see First_name vs Second_name
  end
end
