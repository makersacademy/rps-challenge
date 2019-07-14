feature 'Initiate game' do
  scenario 'User to pick a weapon' do
    sign_in_and_play
    select "Rock", :from => "rpsGame"
  end
end
