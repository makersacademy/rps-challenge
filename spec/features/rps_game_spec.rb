feature 'Open game page' do
  scenario 'play rock paper scissors' do
    sign_in_and_play
    expect(page).to have_css('h1.glow')
  end
end
