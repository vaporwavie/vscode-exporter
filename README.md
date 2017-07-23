# VSCode Extensions Exporter
Imagine that you're going to buy a new dev laptop, and you'll have to consequently re-download every single one of your extensions from VSCode. This tool will do this for you, by parsing your extensions list and installing all of them or, as you wish, just a specific one.

# Requirements
### VSCode Extensions List

You can do this easily by typing <code>code --list-extensions > extensions</code>

**BEFORE ANYTHING:** For now, this tool will only parse a file named <code>extensions</code>. You'll have to put it inside the project's repository folder. Neverthless, I'm already thinking on a way to predict which file is the extensions list. 

# How to use it

* Clone this repo
* Copy your <code>extensions</code> file into the project's repository folder (as I early mentioned)
* Execute it by typing <code>./vscode-exporter.sh</code>
* Let the magic happen :smile:

# License
[LICENSE](LICENSE)

# CONTRIBUTING
TODO