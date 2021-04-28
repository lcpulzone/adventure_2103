require 'rspec'
require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Park do
  context 'inialization' do
    it 'exists' do
      park1 = Park.new('Capitol Reef')

      expect(park1).to be_a(Park)
    end

    it 'has a name' do
      park1 = Park.new('Capitol Reef')

      expect(park1.name).to eq("Capitol Reef")
    end
  end

  context 'trails' do
    it 'starts with no trails' do
      park1 = Park.new('Capitol Reef')
      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})

      expect(park1.trails).to eq([])
    end

    it 'can add trails' do
      park1 = Park.new('Capitol Reef')
      park2 = Park.new('Bryce Canyon')

      trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
      trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
      trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})

      park1.add_trail(trail1)
      park1.add_trail(trail2)

      expect(park1.trails).to eq([trail1, trail2])

      park2.add_trail(trail3)

      expect(park2.trails).to eq([trail3])
    end
  end
end
