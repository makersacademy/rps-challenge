def sign_in_and_play
  visit('/')
  fill_in(:Player_name, :with => 'Jo')
  click_button 'Play'
end

def choose_paper
  srand(0)
  click_button 'Paper'
  click_button 'Play'
end
