require 'rspec'
require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Trail do
  context 'inialization' do
    it 'exists' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1).to be_a(Trail)
    end

    it 'has readable attributes' do
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})

      expect(trail1.name).to eq("Grand Wash")
      expect(trail1.length).to eq(2.2)
      expect(trail1.level).to eq(:easy)
    end

  end
end
