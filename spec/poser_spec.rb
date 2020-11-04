require 'spec_helper'

RSpec.describe Poser do
  it "has a version number" do
    expect(Poser::VERSION).not_to be nil
  end
end
  
RSpec.describe Poser::Adjective do
  it "returns a random adjective" do
    expect(Poser::Adjective.all).to include(Poser::Adjective.random)
  end

  it "returns a random adjective using shortcut method" do
    expect(Poser::Adjective.all).to include(p.adj)
  end
end

RSpec.describe Poser::Noun do
  it "returns a random noun" do
    expect(Poser::Noun.all).to include(Poser::Noun.random)
  end

  it "returns a random noun using shortcut method" do
    expect(Poser::Noun.all).to include(p.noun)
  end
end

RSpec.describe Poser::Verb do
  it "returns a random verb" do
    expect(Poser::Verb.all).to include(Poser::Verb.random)
  end

  it "returns a verb using shortcut method" do
    expect(Poser::Verb.all).to include(p.verb)
  end
end

RSpec.describe Poser::Sentence do
  it "returns a sentence" do
    expect(Poser::Sentence.new).not_to be nil
  end

  it "returns multiple sentences" do
    expect(Poser::Sentence.create(3).length).to eq 3
  end
end

RSpec.describe Poser::Comment do
  it "returns a random positive comment" do
    comment = Poser::Comment
    allow(comment).to receive(:positive).and_return('This is why I downloaded this app.')

    expect(comment.positive).to eq ('This is why I downloaded this app.')
  end

  it "returns a random neutral comment" do
    comment = Poser::Comment
    allow(comment).to receive(:neutral).and_return('I guess.')

    expect(comment.neutral).to eq ('I guess.')
  end

  it 'returns a random negative comment' do
    comment = Poser::Comment
    allow(comment).to receive(:negative).and_return('I cannot disagree more.')

    expect(comment.negative).to eq ('I cannot disagree more.')
  end
end