feature 'choose weapon' do
  scenario 'select rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'Jon selected rock'
  end

  scenario 'select paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content 'Jon selected paper'
  end

  scenario 'select scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'Jon selected scissors'
  end
end

# feature 'play paper' do
#   scenario 'click scissors paper' do
#     sign_in_and_play
#     click_link 'Paper'
#     expect(page).to have_content 'You selected paper'
#   end
# end
#
# feature 'play scissors' do
#   scenario 'click scissors button' do
#     sign_in_and_play
#     click_link 'Scissors'
#     expect(page).to have_content 'You selected scissors'
#   end
# end
