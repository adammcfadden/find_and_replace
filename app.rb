require("sinatra")
require("sinatra/reloader")
require("./lib/find_and_replace")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get("/find_and_replace") do
  @final_sentence = params.fetch("sentence_input").find_and_replace(params.fetch("find_input"), params.fetch("replace_input"))
  erb(:find_and_replace)
end
