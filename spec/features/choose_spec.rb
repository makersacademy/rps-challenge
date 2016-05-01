feature 'choose your weapon' do
  
  scenario 'rock option' do
    sign_in
    find_button "rock"
  end

  scenario 'paper option' do
    sign_in
    find_button "paper"
  end

  scenario 'scissors option' do
    sign_in
    find_button "scissors"
  end
end
