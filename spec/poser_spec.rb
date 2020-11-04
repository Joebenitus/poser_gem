require 'spec_helper'

RSpec.describe Poser do
  it "has a version number" do
    expect(Poser::VERSION).not_to be nil
  end
  
  it "returns a random adjective" do
    expect(Poser::Adjective.all).to include(Poser::Adjective.random)
  end

  it "returns a random adjective using shortcut method" do
    expect(Poser::Adjective.all).to include(p.adj)
  end

  it "returns a random noun" do
    expect(Poser::Noun.all).to include(Poser::Noun.random)
  end

  it "returns a random noun using shortcut method" do
    expect(Poser::Noun.all).to include(p.noun)
  end

  it "returns a random verb" do
    expect(Poser::Verb.all).to include(Poser::Verb.random)
  end

  it "returns a verb using shortcut method" do
    expect(Poser::Verb.all).to include(p.verb)
  end

end

