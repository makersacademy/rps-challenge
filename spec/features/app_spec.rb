feature 'get/intro' do
  scenario 'shows instruction' do
    visit('/intro')
    expect(page).to have_content 'Sign in to play'
  end
  scenario 'shows you three options ' do
    visit('/start')
    expect(page).to have_content 'Select Rock, Paper Or Scissor ?'
  end
  # scenario 'shows what computer has picked' do
  #   visit('/start')
  #   expect(page).to have_content 'Select Rock, Paper Or Scissor ?'
  #   end
end