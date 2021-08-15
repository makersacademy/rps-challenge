
def login_and_play(name)
  submit_form = find("//input[type='submit']")
  fill_in(:name, with: name)
  submit_form.click
end
