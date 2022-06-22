require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:pie) { Dessert.new('pie', 5, chef) }
  chef.stub(:bake).with(pie) { pie.heat! }

  describe "#initialize" do
    it "sets a type" do
      expect(pie.quantity).to eq(5) 
    end

    it "sets a quantity" do
      expect(pie.type).to eq('pie') 
    end

    it "starts ingredients as an empty array" do
      expect(pie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('pie', 'five', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      pie.add_ingredient('flour')
      expect(pie.ingredients).to eq(['flour'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pie.eat(2)
      expect(pie.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { pie.eat(6) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      # expect(pie.serve).to include('Chef')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
