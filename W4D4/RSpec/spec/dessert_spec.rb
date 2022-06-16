require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject { Dessert.new('pie', 5, 'chef') }

  describe "#initialize" do
    it "sets a type" do
      expect(subject.quantity).to eq(5) 
    end

    it "sets a quantity" do
      expect(subject.type).to eq('pie') 
    end

    it "starts ingredients as an empty array" do
      expect(subject.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new('pie', 'five', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      subject.add_ingredient('flour')
      expect(subject.ingredients).to eq(['flour'])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      subject.eat(2)
      expect(subject.quantity).to eq(3)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { subject.eat(6) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      serve = subject.serve
      expect(serve).to include('Chef')
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
