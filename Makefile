VPATH = configs

all: config.local

config.local: core disable-firewall local-pkgs
	cat $^ > $@

clean:
	rm -f config.*
