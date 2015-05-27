require 'rails_helper'

describe Player do
  it { should respond_to (:name) }
  it { should respond_to (:score) }
end
