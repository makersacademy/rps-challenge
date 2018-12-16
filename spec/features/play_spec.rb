feature 'Game is playable' do
  scenario 'Can choose R,P,S' do
    sign_in_and_play
    page.has_select?('move', options: ['rock', 'paper', 'scissors'])
  end
end
