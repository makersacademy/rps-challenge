feature 'Display player namr in lights' do
  scenario 'name displayed in lights' do
    sign_in_and_play
    expect(page).to have_css('h1.glow')
  end
end
