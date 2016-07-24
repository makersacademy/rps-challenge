def sign_in_and_play
  visit '/'
  fill_in :name1, with: 'Noby'
  click_button "submit"
end

def let_machine_has_rps
  satisfy {|page| page.has_content?("Machine Opponent: Rock") or page.has_content?("Machine Opponent: Paper") or page.has_content?("Machine Opponent: Scissors")}
end

def has_a_winner
  satisfy {|page| page.has_content?("You win!") or page.has_content?("Machine wins!") or page.has_content?("Draw!") }
end
