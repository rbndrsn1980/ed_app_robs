require 'spec_helper'

describe Stack do

  it "creates a new instance of a Stack" do
    stack = Stack.new
    expect(stack).to be_an_instance_of(Stack)
  end

  it "has a card" do
    name = 'Stack 1'
    description = 'Lorem ipsum dolor'
    is_custom = false
    stack = Stack.new(
      name: name,
      description: description,
      is_custom: is_custom,
      cards: [
        {
        front: "This is the front",
        back: "This is the back"
        },
        {
        front: "Second front",
        back: "Second back"
        },
      ]
    )
    expect(stack.cards).to_not eq nil
  end

  it "creates a custom stack" do
    stack = Stack.new( is_custom: true  )
    expect(stack.is_custom).to eq true
  end




end #end Stack