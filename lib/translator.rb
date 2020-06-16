require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  emoticons.each_with_object({}) do |(key, value), final_array|
    final_array[key] = {}
    final_array[:english] = value[0]
    final_array[:japanese] = value[1]
  end
end

def get_japanese_emoticon(path, emoticon1)
end

def get_english_meaning(path, emoticon)
end