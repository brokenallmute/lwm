CC = clang
CFLAGS = -O3 -march=native -fomit-frame-pointer -Wall
LDFLAGS = -lX11

SRC = lvm.c
EXEC = lvm
PREFIX = /usr

all: $(EXEC)

$(EXEC): $(SRC)
	$(CC) $(CFLAGS) -o $(EXEC) $(SRC) $(LDFLAGS)

clean:
	rm -f $(EXEC)

install: all
	@echo "Installing lvm to $(PREFIX)/bin..."
	mkdir -p $(PREFIX)/bin
	cp -f $(EXEC) $(PREFIX)/bin/
	chmod 755 $(PREFIX)/bin/$(EXEC)
uninstall:
	rm -f $(PREFIX)/bin/$(EXEC)
	@echo "lvm uninstalled."

.PHONY: all clean install uninstall
