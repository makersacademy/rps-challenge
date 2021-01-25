def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Sam'
  click_button 'Submit'
end

def all_bot_options
  ["rock", "paper", "scissors"].map do |choice|
    "Bot chooses #{choice.capitalize}!"
  end
end
