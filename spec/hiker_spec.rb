require 'rspec'
require './lib/trail'
require './lib/park'
require './lib/hiker'

RSpec.describe Hiker do
  context 'initialization' do
    it 'exists' do
      hiker = Hiker.new('Dora', :moderate)

      expect(hiker).to be_a(Hiker)
    end
  end
end
#
# trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
# trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
# park1 = Park.new('Capitol Reef')
# park1.name
# park1.add_trail(trail1)
# park1.add_trail(trail2)
# trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})
# park2 = Park.new('Bryce Canyon')
# park2.add_trail(trail3)
# hiker.name
# #=> "Dora"
# hiker.experience_level
# #=> :moderate
# hiker.snacks
# #=> {}
# hiker.pack('water', 1)
# hiker.pack('trail mix', 3)
# hiker.snacks
# #=> {"water"=>1, "trail mix"=>3}
# hiker.pack('water', 1)
# hiker.snacks
# #=> {"water"=>2, "trail mix"=>3}
# hiker.parks_visited
# #=> []
# hiker.visit(park1)
# hiker.visit(park2)
# hiker.parks_visited
# #=> [#<Park:0x00007fdd66927f48...>, #<Park:0x00007fdd672aa7f0...>]
