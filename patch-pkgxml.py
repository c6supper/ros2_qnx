#!/usr/bin/python3
import os
import sys
import string
from pathlib import Path
import argparse

qnx_deps_list =[]
verbose = False

def scan_dir(src_path,searched_file='package.xml'):
   ros2_packageXMLs = []
   assert os.path.isdir(src_path)
   dep_path = src_path + '/qnx_deps'

   for path in Path(src_path).rglob('package.xml'):
      if 'qnx_deps' not in path.parts:
         ros2_packageXMLs.append(path)
      
   for packageXML in ros2_packageXMLs:
      scan_file(packageXML)

def scan_file(path):
   fp = open(path, 'r+')
   needs_vendor = []
   has_vendor = []
   prev = pos = 0
   
   content = fp.readlines()

   for line in content:
      prev = pos
      pos = pos + 1 #tell() doesn't work
      
      if 'depend' in line:
         for package in qnx_deps_list:
            package_no_numbers = package.rstrip(string.digits)
            if package_no_numbers in line and (package + "_vendor") not in line and not (package in needs_vendor):
               needs_vendor.append(package) 
            elif (package + "_vendor") in line and not(package in has_vendor):
               # vendor package already exists
               has_vendor.append(package)

      if "</package>" in line:
         
         for dep in needs_vendor:
            content.insert(prev, "  <build_depend>" + dep + "_vendor" + "</build_depend>\n")

         global verbose
         if needs_vendor:
            #only change is something needs to be changed
            if verbose:
               print("The following packages have been added to " + str(path) + " : " + str(needs_vendor))
            fp.seek(0)
            fp.writelines(content)
         break

   fp.close()


def main():   
   parser = argparse.ArgumentParser(description='Patches package.xml files to integrate qnx_deps into ros2 src directory')
   parser.add_argument('--path', help="path to ros2 src directory")
   parser.add_argument("-v","--verbose", help="set verbosity to on", action="store_true")
   args = parser.parse_args()

   global verbose
   if args.verbose:
      verbose=True
   src_dir= args.path

   if(src_dir != 1):
      #Make a list of all qnx dependencies
      dep_path = src_dir + '/qnx_deps'
      for item in os.listdir(dep_path):
         if os.path.isdir(os.path.join(dep_path, item)):
            qnx_deps_list.append(item[:-(len("_vendor"))])

   #search for package.xml and patch
   scan_dir(src_dir)

if __name__ == "__main__":
   main()
