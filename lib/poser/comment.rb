module Poser
  class Comment

    def self.positive(name=nil)
      if name
        ["#{name.capitalize}! Let's hang out some time.", "#{name.capitalize} is my favorite person on this platform.", "#{name.capitalize} is doing an amazing job."].sample
      else
        ["I couldn't agree more.", "This is why I downloaded this app.", "Hilarious!", "So good to hear!"].sample
      end
    end

    def self.negative(name=nil)
      if name
        ["#{name.capitalize}, Never hang out with me again.", "#{name.capitalize} is the worst person on this platform.", "#{name.capitalize} is doing a horrendous job."].sample
      else
        ["I cannot disagree more.", "You don't look good in this post", "Yikes"].sample
      end
    end

    def self.neutral(name=nil)
      if name
        ["#{name.capitalize}, I could go either way, to be honest.", "#{name.capitalize} is just ok.", "#{name.capitalize} is doing an average job."].sample
      else
        ["I guess.", "I'm really not certain.", "It doesn't really matter to me."].sample
      end
    end
  end
end

