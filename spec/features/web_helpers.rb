
def enter_name
  visit('/')
  fill_in :player, with: 'Sam'
  click_button "Let's go!"
end

def rock
  visit('/play')
  click_button "Rock"
end

def paper
  visit('/play')
  click_button "Paper"
end

def scissors
  visit('/play')
  click_button "Scissors"
end
