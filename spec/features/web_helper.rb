def sign_in
  allow_any_instance_of(Computer).to receive(:move).and_return(:rock)
  visit('/')
  fill_in 'name', with: 'John'
  click_on('Go')
end

def sign_in_multiplayer
  visit('/')
  fill_in 'name', with: 'John'
  fill_in 'name2', with: 'James'
  click_on('Go')
end

def make_choice(*choices)
  choices.each { |choice| click_on choice }
end
