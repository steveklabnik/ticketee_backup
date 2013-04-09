module Helpers
  def sign_in(user)
    visit '/'
    click_link 'Sign in'
    fill_in 'User Name', with: user.name
    fill_in 'Password', with: user.password
    click_button "Sign in"
  end
end
