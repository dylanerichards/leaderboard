require 'rails_helper'

describe Player do
  it { should respond_to :name }
  it { should respond_to :score }

  it { should validate_presence_of :name }
  it { should validate_presence_of :score }
end
