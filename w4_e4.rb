# a. Display your current working directory.
puts Dir.getwd

# b. Create a new directory tmp under your working directory.
Dir.mkdir("tmp")

# c. Change your working directory to tmp.
Dir.chdir("tmp")

# d. Display your current working directory.
puts Dir.getwd

# e. Go back to your original directory.
Dir.chdir("..")

# f. Delete the tmp directory.
Dir.delete("tmp")
