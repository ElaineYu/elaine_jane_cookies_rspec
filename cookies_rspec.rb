require "rspec"

require_relative "cookies_and_oven"

# class for an business order of cookies
describe CookieBatchOrder do

  let(:cookiebatch) {Cookie.new(type, state, batch_size)}
  subject  {cookiebatch}
  let(:type) {"Chocolate Chip"}
  let(:state) {"raw"}
  let(:batch_size) {24}

  # Cookie type e.g. peanut butter, sugar, chocolate chip
  # Cookie state, e.g. baked, not baked
  describe "#initialize" do 
    it "creates a cookie batch order object" do
      cookiebatch.should be_an_instance_of CookieBatchOrder
    end
  end

  describe "#prepare" do
    it "returns number of cookie trays" do
      cookiebatch.prepare.should eq 2
    end
  end


  describe "baked_status" do
    context "before putting a cookie batch in the oven" do
      it "returns bake status of cookie batch" do
        cookiebatch.baked_status.should eq "raw"
      end
    end

    context "when removing cookie batch from oven" do
      let(:state) {"baked"}
        it "returns bake status of cookie batch" do
          cookiebatch.baked_status.should eq "baked"
        end
    end
  end  

end



# For Oven class
describe Oven do

  let(:oven) {Oven.new(temperature = 0, door_open = false)}

  describe "#initialize" do
    it "creates an oven object that is off and door is closed" do
      oven.should be_an_instance_of Oven
    end
  end

  # set oven temp
  describe "#set_oven_temp" do
    it "heats oven to required temperature" do
      oven.set_oven_temp.should eq 350
    end
  end
  # Oven open and closed
  #  
end


