<br>
<div align='center'>
	<img src='https://raw.githubusercontent.com/computefoundation/gnu-linux-shell-scripting/images/logo.png' width='40%' alt='logo.png'>
</div>
<br><br>

**Gnu-linux-shell-scripting** is a foundation for shell scripting in the GNU/Linux environment.

It is made up of the following four types of solutions:

1. Scripts
2. Functions scripts
3. One-liners
4. Aliases

# Categories

Here is a list of all the categories with a few examples in which all solutions exist:

## Application management

* [Generic RDBMS utility functions for a MySQL database](functions_scripts/application_management/database/mysqldbutils)
* [Check if a PostgreSQL database exists.](one-liners/application_management/database/postgresql-database.one-liners)

## File management

* [Rename all files matching a name recursively.](scripts/file_management/file_name_manipulation/renmrecr)
* [Get the size in megabytes of one or more files and/or directories.](one-liners/file_management-output_only/file_information/file-property-information-retrieval.one-liners)

## System management

* [List all processes owned by the current user.](aliases/system_management-output_only/process_information/process-general-information-retrieval.aliases)
* [Print the target architecture of the current operating system.](one-liners/system_management-output_only/operating_system_information/operating-system-property-information-retrieval.one-liners)

## Hardware management

* [Check if the primary wireless local area network device interface is soft blocked.](scripts/hardware_management-output_only/device_information/iswlanblocked)
* [Get the vendor name of the CPU.](one-liners/hardware_management-output_only/cpu_information/cpu-property-information-retrieval.one-liners)

## Shell management

* [Execute a command in the background.](scripts/shell_management-modules/process_management/execinbg)
* [Remove the last N entries from the bash history.](scripts/shell_management/history_management/remvlastnentriesfrombashhist)

## X11 management

* [Get the ID of the active window.](scripts/x11_management-output_only/window_property_information/getactvwindid)
* [Get the class of a window by ID.](scripts/x11_management-output_only/window_property_information/getwindclassbyid)

## Mobile device management

* [Watch the X and Y screen tap positions of an Android device.](scripts/mobile_device_management-android/hardware_management/watchandroiddevscreentappos)
* [Mount and unmount an MTP device.](scripts/mobile_device_management-generic/mounting/mntmtp)

## Scripting

* [Bash array utilities](functions_scripts/scripting/bash/arrayutils.bash)
* [Bash date and time utilities](functions_scripts/scripting/bash/dateandtimeutils.bash)

## Text manipulation

* [Replace all occurrences of a string recursively.](scripts/text_manipulation/matching/replrecr)

## Text processing

* [Count the number of characters in a string.](aliases/text_processing/numeric_processing/basic-numberic-processing.aliases)

## Number processing

* [Convert a hexidecimal number to decimal.](aliases/number_processing/conversion/base-conversion.aliases)

# Packaged solutions

**Gnu-linux-shell-scripting** has an [extension repository](https://github.com/computingfoundation/gnu-linux-shell-scripting.packaged-solutions) for solutions consisting of more than one file.

# Code style guidelines

All the solutions in this repository follow [these](https://github.com/computingfoundation/gnu-linux-shell-scripting/wiki) standard guidelines.

