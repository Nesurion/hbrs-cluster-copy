# hbrs-cluster-copy
Copy files to the hbrs with ease.
This script is specific to the course *Programmierung paralleler Anwendungen* held at Hochschule Bonn-Rhein-Sieg by Prof. Dr. Rudolf Berrendorf.
If your are not on that course, this wont help you ;)

# Setup
1. open your `~/.bashrc` or `~/.bash_profile` with your favorite editor (ex. vim)
2. add these lines: 
3. `export CLUSTER_USERNAME="your_username"`, replace `your_username` with your hbrs id eg: mmustr2s
4. `alias clustercp="ruby /full_path/to/hbrs-cluster-copy/cluster_copy.rb"`, you can replace `clustercp` with whatever you like
5. Login on the cluster and append your local `~/.ssh/id_rsa.pub` to `~/.ssh/authorized_keys`
6. done!



Important Note: Create a folder called `parprog`, where you place your uebung folders.
It's critical that the folder name matches, otherwise the script won't work!

# How to use
1. cd to your `parprog` folder
2. you can copy a uebung folder, an aufgabe folder, or just one file in a aufgabe folder.
3. coping an entire uebung folder: `clustercopy uX` (clustercopy is your alias to the script, X is the uebung number). This creates the uebung folder on the cluster under `~/parprog/uX/...` and all local subfolders + files.
4. copy an entire aufgabe folder: `.../parprog/uX/ $ clustercopy aY`
5. copy a file: `.../parprog/uX/aY $ clustercopy file`

Contribute:
If this is not working for you:
1. check the readme again, maybe you missed something
2. still having a problem? create an issue on github. (include description and error message)
3. you have a idea on how to do this a better way? Great! Fork the project and share your solution.
