require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  emoticons.each_with_object do |(key, value)|
    binding.pry
  end
end

def get_japanese_emoticon(path, emoticon1)
end

