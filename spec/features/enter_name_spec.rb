
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'so name can be seen' do
  scenario 'register name before game' do
    visit('/')
    fill_in('player1', with: 'Ian')
    click_button('Paper') || click_button('Rock') || click_button('Scissors')
  end
end

# feature 'so name can be seen' do
#   scenario 'register name before game' do
#     visit('/')
#     fill_in('player1', with: 'Ian')
#     click_button ('Submit')
#     click_button ('Play')
#   end
# end
