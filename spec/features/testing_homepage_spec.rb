feature 'Testing homepage content' do
  scenario 'Run the app and check page content- first line' do
    visit('/')
    expect(page).to have_content 'The Rock Paper Scissors Game!'
  end

  scenario 'Run the app and check page content - second line' do
    visit('/')
    expect(page).to have_content 'Please submit your name to play'
  end

  scenario 'Run the app and check page content - third line' do
    visit('/')
    expect(page).to have_content 'Each turn you choose between Rock, Paper, Scissors!'
  end

end
