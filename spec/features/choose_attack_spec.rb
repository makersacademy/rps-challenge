# feature 'player can see attack options' do
#   scenario 'and choose their attack' do
#     sign_in_and_submit_name
#     message = "Samson\nChoose your attack: Rock, Paper or Scissors"
#     expect(page).to have_content message
#     select 'Rock', from: 'move'
#     click_button 'Submit'
#     message_1 = "Samson\nYou win with rock!"
#     message_2 = "Samson\nYou draw with rock!"
#     message_3 = "Samson\nYou lose with rock!"
#     expect(page).to have_content message_1 || message_2 || message_3
#   end
# end
