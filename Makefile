CC = gcc
CFLAGS_OSX = -lusb-1.0 -framework CoreFoundation -framework IOKit -lreadline
CFLAGS_LNX = -lusb-1.0 -lreadline
CFLAGS_WIN = -lusb-1.0 -lreadline

all:
		@echo 'ERROR: no platform defined.'
		@echo 'LINUX USERS: make linux'
		@echo 'MAC OS X USERS: make macosx'
	 	@echo 'WINDOWS USERS: make win'
macosx:	
		@echo 'Buildling iRecovery (Mac Os X)'
		@$(CC) sigbypassipx.c -o sigbypassipx $(CFLAGS_OSX)
		@echo 'Successfully built sigbypass'
linux:
		@echo 'Buildling iRecovery (Linux)'
		@$(CC) sigbypassipx.c -o sigbypassipx $(CFLAGS_LNX)
		@echo 'Successfully built sigbypass'
win:
		@echo 'Buildling iRecovery (Windows)'
		@$(CC) sigbypassipx.c -o sigbypassipx -I "C:\MinGW\include" -L "C:\MinGW\lib" $(CFLAGS_WIN)
		@echo 'Successfully built sigbypass'
clean:
		@echo 'Cleaning...'
		@rm -rf *.o sigbypassipx
		@echo 'Cleaning finished.'

