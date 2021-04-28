require 'rspec'
require './lib/trail'
require './lib/park'
require './lib/hiker'

Rspec.describe Park do
  context 'inialization' do
    it 'exists' do
      park1 = Park.new('Capitol Reef')

      expect(park1).to eq(Park)
    end
  end
end
#
# trail1 = Trail.new({name: 'Grand Wash', length: '2.2 miles', level: :easy})
# trail2 = Trail.new({name: 'Cohab Canyon', length: '1.7 miles', level: :moderate})
#
# #=> #<Park:0x00007fdd66927f48 @name="Capitol Reef", @trails=[]>
# park1.name
# #=> "Capitol Reef"
# park1.trails
# #=> []
# park1.add_trail(trail1)
# park1.add_trail(trail2)
# park1.trails
# #=> [#<Trail:0x00007fdd67232750...>, #<Trail:0x00007fdd66946060...>]
# trail3 = Trail.new({name: 'Tower Bridge', length: '3.0 miles', level: :moderate})
# #=> #<Trail:0x00007fdd68019a30 @length="3.0 miles", @level=:moderate, @name="Tower Bridge">
# park2 = Park.new('Bryce Canyon')
# #=> #<Park:0x00007fdd672aa7f0 @name="Bryce Canyon", @trails=[]>
# park2.add_trail(trail3)
# hiker = Hiker.new('Dora', :moderate)
# #=> #<Hiker:0x00007fdd6806da40 @experience_level=:moderate, @name="Dora", @parks_visited=[], @snacks={}>
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
#
# ```
