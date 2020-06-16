require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  emoticons.each_with_object({}) do |(label, emoticon), fixed_array|
    if !fixed_array[label]
      fixed_array[label] = {}
    end
    if !fixed_array[label][:english]
      fixed_array[label][:english] = emoticon[0]
    end
    if !fixed_array[label][:japanese]
      fixed_array[label][:japanese] = emoticon [1]
    end
  end
end

def get_japanese_emoticon(path, emoticon1)
  lookup = load_library(path)
  
  emoticon1 = lookup.keys.each do |key|
    lookup[key][:english] == emoticon1
    if emoticon1 == lookup[key][:japanese]
    else 
      "Sorry, that emoticon was not found"
    end
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