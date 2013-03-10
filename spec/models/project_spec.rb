require 'spec_helper'

describe Project do
  before do
    @project = Project.new(:name => "Test", :description => "Description")
  end

  subject {@project}

  it{should respond_to(:name)}
  it{should respond_to(:description)}
end
