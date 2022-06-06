feature 'get/' do
  scenario 'shows instruction' do
    visit('/')
    expect(page).to have_content 'Sign in to play'
  end
  scenario 'shows you three options ' do
    sign_in
    expect(page).to have_content "Hey Hafiz Let's Play Rock, Paper, Scissor!"
    expect(page).to have_content 'Select Rock, Paper Or Scissor ?'

  end
  # scenario 'shows what computer has picked' do
  #   sign_in
  #   fill_in :object1, with: 
  #   expect(page).to have_content 'rock vs'

  #   expect(page).to have_content 'rock, paper, scissor'
  # end
end
# feature 'post/' do
#   scenario 'shows you three options ' do
#     visit('/names')
#     expect(page).to have_content 'Select Rock, Paper Or Scissor ?'
#   end
# end