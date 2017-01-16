How to access and use the files in this github repository:

1. If you dont have them already, download VirtualBox (made by Oracle) and Vagrant(made by HashiCorp).
2. Place the Tournament folder (located in this GitHub repo) in an easily available spot.
3. Use a Command Line to navigate to the Tournament folder.
4. Type "vagrant up". This could take a while if you are just setting up Vagrant for the first time.
5. Type "vagrant ssh" to log into Vagrant.
6. Type "cd /vagrant" to navigate to shared files.
7. To run the tournament tests, type "python tournament_test.py". The output will be shown in your Command Line.
8. To run only the SQL file, navigate back to vagrant (ctrl + z generally does the trick) and type "psql". Then type "\i tournament.sql".

Note: To alter any code in this project, IDLE can be used for altering 'tournament.py' and 'tournament_test.py', but a text editor
like ATOM must be used to alter the SQL file.
