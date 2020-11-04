module Poser
  class Sentence

    def self.new
      sentences = ["I like to #{p.verb} my #{p.noun}. ", "I #{p.verb} my #{p.noun}. ", "I #{p.verb} a very #{p.adj} #{p.noun}. ", "I hate when my #{p.noun} #{p.verb}s my #{p.noun}. ", "When I #{p.verb} my #{p.noun}, my #{p.noun} becomes #{p.adj}. "]
      sentences.sample
    end

    def self.create(count)
      output = []
      count.times do 
        output.push(Sentence.new)
      end
      output.join('')
    end
  end
end

