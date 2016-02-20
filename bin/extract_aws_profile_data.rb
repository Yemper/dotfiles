#!/usr/bin/env ruby

home         = ARGV[0]
profile      = ARGV[1]
return_match = ARGV[2]
content      = File.read("#{home}/.aws/credentials")
match        = content.match(/\[#{profile}\]\naws_access_key_id = (.*)\naws_secret_access_key = (.*)/s)

puts match[return_match.to_i]
