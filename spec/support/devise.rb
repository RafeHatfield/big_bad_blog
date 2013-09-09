# This module authenticates users for request specs.#
module ValidUserRequestHelper

	def sign_in(user, options={})
    visit new_user_session_path
    # debugger
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
	end

end

RSpec.configure do |config|
  # Include the help for the request specs.
  config.include ValidUserRequestHelper, :type => :request
  config.include Devise::TestHelpers, :type => :controller
end
