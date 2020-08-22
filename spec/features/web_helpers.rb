def enter_name_and_go
  visit('/')
  fill_in(:player, with: 'Homer')
  click_button('Go')
end
