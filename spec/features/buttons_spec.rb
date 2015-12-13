feature 'play rock' do
  scenario 'click rock button' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Jon selected rock'
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
