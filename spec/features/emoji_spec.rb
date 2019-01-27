feature 'Emoji Options: ' do
  scenario '1. Player selects rock, paper or scissors emoji' do
    include sign_in
    find_button('✊').click
  end
end
