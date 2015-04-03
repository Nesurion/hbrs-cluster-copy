# hbrs cluster copy
# append your ssh public key "~/.ssh/id_rsa.pub" to "~/.ssh/authorized_keys"
# local folder structure needs to be the same as on cluster
# parprog/uX/aY

cluster_username = ENV['CLUSTER_USERNAME']

full_path = `pwd`[0..-2]
path_array = full_path.split('/')
arg = ARGV[0]

level1 = path_array[-3]
level2 = path_array[-2]
level3 = path_array[-1]

if level3 == "parprog"
  # farly safe to assume we are in the right folder and user intended to copy a whole uebung folder
  # create uebung folder
  system("rsync -ave ssh #{arg} #{cluster_username}@wr0.wr.inf.h-brs.de:parprog/")
elsif level3 =~ /u[0-9]/
  # source is a uebung folder and we want to copy a whole aufgabe folder
  system("rsync -ave ssh #{arg} #{cluster_username}@wr0.wr.inf.h-brs.de:parprog/#{level3}")
elsif level2 =~ /u[0-9]/ and level3 =~ /a[0-9]/ 
  # source is a file in a level3 folder and we copy to realted folder on cluster
  # cant copy single file if uebung folder on cluster doesn't exist
  system("rsync -ave ssh #{arg} #{cluster_username}@wr0.wr.inf.h-brs.de:parprog/#{level2}/#{level3}/")
else
  # source folder doesn't match any of the pattern above
  p "path doesn't match. be sure to copy eighter a aufgabe file, aufgabe folder or uebung folder."
end
