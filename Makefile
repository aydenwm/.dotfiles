#This sets the variables linux and clean. 
linux_script =./bin/linux.sh 
cleanup_script = ./bin/cleanup.sh 
#This defines targets and dependencies. 
linux: clean 
	chmod +x $(linux_script) 
	$(linux_script) 

clean: 
	chmod +x $(cleanup_script) 
	$(cleanup_script) 
