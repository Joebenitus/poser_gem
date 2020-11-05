# Poserbot

Poserbot is a ruby gem that generates random sentences for your databases or your own amusement. Poserbot uses libraries of various nouns, adjectives, and verbs to populate several different potential sentence templates. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'poserbot'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install poserbot

## Usage

```ruby
require 'poserbot'

Poser::Sentence.new                 #=> "I hate when my eagle spills my reading."

Poser::Comment.positive             #=> "This is why I downloaded this app."

Poser::Comment.positive('Billy')    #=> "Billy is my favorite person on this platform."
```

**Note**: `Poser::Sentence` creates an entirely random sentence with random nouns/verbs/adjectives. `Poser::Comment` pulls from a pool of prewritten comments with positive, negative, or neutral connotations.

## Methods
---

### **Poser::Sentence**

```ruby
Poser::Sentence.new     #=> "I type a very ethereal room."
```
* _Inserts a random noun/verb/adjective into prewritten sentence templates_

```ruby
Poser::Sentence.create(2)     #=> ["When I mark my driver, my plough becomes poor. ", "When I borrow my parrot, my racing becomes nimble. "]
```
* _Same function as `Poser::Sentence.new` method but allows the amount of sentences generated to be inputted as an argument_
* _**Note**: `Poser::Sentence.create` returns each sentence as elements in an array. To return a string of all sentences, use `Poser::Sentence.create(number_of_sentences).join('')`_
---
### **Poser::Comment**
```ruby
Poser::Comment.positive     #=> "I couldn't agree more."
```
* _Returns one of many prewritten positive responses._

```ruby
Poser::Comment.neutral     #=> "It doesn't really matter to me."
```
* _Returns one of many prewritten neutral responses._

```ruby
Poser::Comment.negative     #=> "You don't look good in this post"
```
* _Returns one of many prewritten negative responses._

***All methods for `Poser::Comment` can recieve a string as an argument as shown below.***
```ruby
Poser::Comment.positive('Joe')     #=> "Joe is my favorite person on this platform."

Poser::Comment.neutral('Joe')     #=> "Joe is just ok."

Poser::Comment.negative('Joe')     #=> "Joe, Never hang out with me again."
```
---

## Disclaimer
*The library of nouns, verbs, and adjectives come from this github gist link: https://gist.github.com/ijmacdowell/8325491. Given the nature of the `Poser::Sentence` method being randomly generated, there is always the possibility of a sentence coming out as offensive or problematic. We have taken the liberty of removing any ethnicities, countries, and proper names from the nouns list. Additionally, we have sifted through all of the verbs and adjectives to remove any potentially offensive words. That being said, it is still possible some potentially offensive words remain in the list. We are open to any pull request regarding the removal of a word from the list and we will take action as we see fit.*

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joebenitus/poser_gem.
Please feel free to add data to potential sentence templates as our current data pool is limited.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
