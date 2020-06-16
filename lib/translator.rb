require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  emoticons.each_with_object do |(key, value)|
    binding.pry
  end
end

def get_japanese_emoticon(path, emoticon1)
  lookup = load_library(path)
  
#  sample = lookup.find do |(key, value)|
 #   value[:english] == emoticon || value[:japanese] == emoticon
  #end
    if !lookup[get_english_meaning(path, emoticon1)]
      "Sorry, that emoticon was not found"
    else
      lookup[get_english_meaning(path, emoticon1)][:japanese]
    end
end

def get_english_meaning(path, emoticon)
  lookup = load_library(path)
  
  sample = lookup.find do |(key, value)|
    value[:japanese] == emoticon || value[:english] == emoticon
  end
    if sample == nil
    "Sorry, that emoticon was not found"
    else
      return sample[0]
    end
end