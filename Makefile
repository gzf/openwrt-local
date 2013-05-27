VPATH = configs

all: config.pub config.local

config.pub: core luci comp-12.09
	cat $^ > $@

config.local: core disable-firewall local-pkgs
	cat $^ > $@

clean:
	rm -f config.*
