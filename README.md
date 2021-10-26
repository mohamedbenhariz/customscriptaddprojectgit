# custom script add project git

 * Open the Folder that contient the project to Upload to Git (Github / Gitlab) 
 * then Open Git bash 
 * put this file "customscriptaddprojectgit.sh" in this Folder
 * then execute this script
   * sh customscriptaddprojectgit.sh -a parameterA -b parameterB -c parameterC 
   * with parameterA : the default branch is master 
   * witt parameterB : the remote URL is the same when you create the new repository
   * with parameterC : the type of prject exemple angular or visualstudio also you can add both angular,visualstudio 
   to create .gitignore file
   * exemple : sh customscriptaddprojectgit.sh -a master -b git@github.com:mohamedbenhariz/customscriptaddprojectgit.git -c angular,visualstudio