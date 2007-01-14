#==============================================================
#
#  Abs:  Makefile to build EPICS PV Restore Application
#
#  Name: Makefile
#
#  Auth: dd-mmm-yyyy, Author's Name   (USERNAME)
#  Rev:  dd-mmm-yyyy, Reviewer's Name (USERNAME)
#
#--------------------------------------------------------------
#  Mod:
#        dd-mmm-yyyy, First Lastname (USERNAME):
#            comments
#
#==============================================================
#
TOP=..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#
PROD_HOST += dbRestoreServer

# Link everything into a library:
LIBRARY_IOC_vxWorks = restore
LIBRARY_IOC_RTEMS   = restore

DBD += dbRestore.dbd
INC += dbRestore.h

# Source files (for depends target):
dbRestoreServer_SRCS  += dbRestoreServer.c
dbRestoreServer_SRCS  += restoreLib.c
dbRestoreServer_SRCS  += restoreSockLib.c
dbRestoreServer_SRCS  += restoreFileLib.c
dbRestoreServer_LIBS  += Com

restore_SRCS += restoreRegister.cpp
restore_SRCS += restoreFileLib.c
restore_SRCS += restoreSockLib.c
restore_SRCS += restoreLib.c
restore_SRCS += dbRestore.c

ifdef EPICS_BASE_IOC_LIBS
restore_LIBS = $(EPICS_BASE_IOC_LIBS)
endif

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
