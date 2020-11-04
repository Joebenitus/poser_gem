module Poser
  require ('./lib/poser/sentence.rb')
  require ('./lib/poser/noun.rb')
  require ('./lib/poser/verb.rb')
  require ('./lib/poser/adjective.rb')
  require ('./lib/poser/comment.rb')

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