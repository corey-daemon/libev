GCC = g++
CFLAGS = -I/usr/libevent/include -I/usr/libevent/include/event2 -levent
OUT = ./out
########################################
.PHONE:all
all: $(OUT)/client $(OUT)/server
	

.PHONE: clean
clean:
	rm -rf out/*

$(OUT)/client: client.c
	$(GCC) -o $@ $< $(CFLAGS)
$(OUT)/server: server.c
	$(GCC) -o $@ $< $(CFLAGS)
