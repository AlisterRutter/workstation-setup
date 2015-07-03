require 'spec_helper'
describe 'equistation' do

  context 'with defaults for all parameters' do
    it { should contain_class('equistation') }
  end
end
