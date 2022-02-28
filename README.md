# Formalated Automation's Robot Framework Examples

## Table of Contents

- [Debugging using vanilla Robot Framework keywords](debug-vanilla)
- [Debugging using Python pdb](debug-python-pdb)
- View => Tool Window => Terminal
- python -m venv venv
- pip install robotframework-selenium2library
- venv\scripts\activate.bat
- pip install webdriver-manager
- download windows 64 zip from https://github.com/mozilla/geckodriver/releases
- copy geckodriver.exe python exe folder
- cd debug-vanilla
- $Env:ROBOT_DEBUG = "TRUE"; robot -d output .
- https://www.youtube.com/watch?v=fERYizC5PMs

- Debug from pdb
- debug-python-pdb> $Env:ROBOT_DEBUG = "TRUE"; robot -d output .
  - > d:\robottest\debug-python-pdb\debuglibrary.py(14)set_breakpoint()->None
      > import sys, pdb; pdb.Pdb(stdout=sys.__stdout__).set_trace()
    (Pdb) BuiltIn().get_variable_value("${query}")
    > BuiltIn().set_local_variable("${query}","Shenyi")
    > c => continue
    > variables = {k: v for k, v in BuiltIn().get_variables().items()} 
    > pprint.pprint(variables)
