# Bash file that given the url and the plugin number renames the folder of this plugin to turn it off
This script is for my current hosting on Gridpane, once I found the plugin that is causing the issue, I can run this script and it will rename the folder of the plugin to "{name-of-theplugin}-copy" and then rename it back to orginal name. This action deactivates plugin and in most cases solves the crash of wordpress.

# How to use it
Run script in a termina and provide 2 parms URL & PLUGIN-NAME
e.g.
 ```
./plugin-deactivate.sh test.com ws-form
 ```
# Testing
You can use  `-test ` to create a testing folder
This part still need some work.
 ```
./plugin-deactivate.sh -test
 ```

## TODO

- [x] Creat template file for Bash
- [x] Manually setup the comand and test if it is working
- [x] Add paramiters to the script so it takes URL and PLUGIN NAME as variables.
- [x] Test it locally
- [ ] Test it on the server
