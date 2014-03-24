rdef - arbitrary definition
===========================

rdef is an MacOSX command line utility that parses an arbitrary set of MacOSX dictionaries for a Chinese character or phrase and outputs the corresponding definition to the Terminal. 

To use - copy/install executable into /usr/local/bin and execute from a Terminal window with the following syntax:

rdef <chinese_character(s)>

e.g.

rdef 我

returns

Definition of <我>: | wǒ |
I
me
my

If <chinese_character(s)> is not found in any MacOSX system dictionaries then (null) will be returned.

Use- Case:

Output from this command can be piped through perl, sed, awk or your other favorite stream utility to parse out either the definition or the pinyin associated with the Chinese input.


