VPATH = configs

all: config.pub config.local

config.pub: config.core config.luci config.12.09
	cat $^ > $@

config.local: config.core config.disable-firewall config.pkgs
	cat $^ > $@

clean:
	rm -f config.*
