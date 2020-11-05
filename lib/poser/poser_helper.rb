module Poser
  def p.noun
    Poser::Noun.random
  end

  def p.verb
    Poser::Verb.random
  end

  def p.adj
    Poser::Adjective.random
  end
end