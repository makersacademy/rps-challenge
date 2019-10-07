def details_comp
  visit "/"
  fill_in('name_1', :with => 'Kirill')
  choose(option: 'computer')
  choose(option: 'rock')
end

def details_human
  visit "/"
  fill_in('name_1', :with => "Kirill")
  choose(option: 'human')
  choose(option: 'rock')
end

def fight
  click_button("submit")
end
