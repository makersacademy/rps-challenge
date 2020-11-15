def sign_in
  visit ('/')
  fill_in :name, with: 'Rafa'
  click_button 'Start Game!'
end

def cpu_outcomes
 [:rock, :paper, :scissors].map { |choice| "CPU chose #{choice}!"}
end