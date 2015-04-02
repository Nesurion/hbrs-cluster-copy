# hbrs cluster copy
# append your ssh public key "~/.ssh/id_rsa.pub" to "~/.ssh/authorized_keys"
# local folder structure needs to be the same as on cluster
# parprog/uX/aY
require "json"

cluster_username = ENV['CLUSTER_USERNAME']

full_path = `pwd`[0..-2]
path_array = full_path.split('/')
file_name = ARGV[0]

uebung = path_array[-2]
aufgabe = path_array[-1]

system("scp #{file_name} #{cluster_username}@wr0.wr.inf.h-brs.de:parprog/#{uebung}/#{aufgabe}")
