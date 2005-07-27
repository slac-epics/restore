TOP=../..
ifneq ($(wildcard $(TOP)/configure)x,x)

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

PROD_HOST += dbRestoreServer
dbRestoreServer_SRCS  += dbRestoreServer.c
dbRestoreServer_SRCS  += restoreLib.c
dbRestoreServer_SRCS  += restoreSockLib.c
dbRestoreServer_SRCS  += restoreFileLib.c
dbRestoreServer_LIBS  += Com

DBD += dbRestore.dbd

INC += dbRestore.h

LIBRARY_IOC = restore

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

else

include $(TOP)/config/CONFIG_APP
include $(TOP)/config/RULES_ARCHS

endif

