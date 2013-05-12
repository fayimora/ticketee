require 'spec_helper'

describe Ticket do
  before do
    @ticket = Ticket.new(:title => "My Ticket", :description => "Its description")
  end
  subject{@ticket}

  it{should respond_to(:title)}
  it{should respond_to(:description)}
end
