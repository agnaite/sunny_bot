require 'spec_helper'

describe 'latest_temperature' do
  it 'returns the latest temperature' do
    latest_temperature.should_not be_nil
  end
end
