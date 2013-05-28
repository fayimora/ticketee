require 'spec_helper'

describe User do
  before do
    @user = User.new(email: 'x@example.com', password: 'password', password_confirmation: 'password')
  end
  subject{@user}

  it{should respond_to :email}
  it{should respond_to :password}
  it{should respond_to :password_confirmation}
end
