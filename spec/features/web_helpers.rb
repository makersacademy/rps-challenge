def homepage
  visit('/')
end

def homepage_sign_in
  visit('/')
  fill_in('username', with: 'Daniel')
end

