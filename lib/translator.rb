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
end

def get_english_meaning(path, emoticon)
end