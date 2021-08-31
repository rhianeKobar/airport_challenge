require 'airport'
require 'plane'

describe Airport do

		it { is_expected.to respond_to(:land) }
		it { is_expected.to respond_to(:take_off) }

		it 'Should say the plane has taken off' do
				hangar = Airport.new 
				expect(hangar.take_off).to eq 'the plane has left'
		end
		
		it 'raise an error when landing a plane at a full airport' do
			plane = Plane.new
			hangar = Airport.new
			hangar.land(plane)
			expect{hangar.land(plane)}.to raise_error 'airport is full' 
		end
	
end
