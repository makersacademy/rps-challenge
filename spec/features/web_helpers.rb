def choose_regular_one_player
  visit '/'
  select("Regular", :from => "Modeselector")
  select("1", :from => "Playselector")
  click_button('OK')
end

def choose_regular_two_player
  visit '/'
  select("Regular", :from => "Modeselector")
  select("2", :from => "Playselector")
  click_button('OK')
end

def choose_hard_one_player
  visit '/'
  select("Hard", :from => "Modeselector")
  select("1", :from => "Playselector")
  click_button('OK')
end

def choose_hard_two_player
  visit '/'
  select("Hard", :from => "Modeselector")
  select("2", :from => "Playselector")
  click_button('OK')
end

def names1
end

def names2
end
