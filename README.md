# To Build

    $ make build

# To Run

    $ make run

# To Run with TCP Resets

    $ make run_with_reset

# To Run with 20% Packet Loss

    $ make run
    $ make run_with_packet_loss

# To Test

    $ make test

```
Writing log file to: /Users/timkoopmans/Git/90kts/wopr25/tcp_reset_demo/jmeter.log
Created the tree successfully using tcp_reset_demo.jmx
Starting the test @ Sun Feb 12 18:26:36 AEDT 2017 (1486884396853)
Waiting for possible Shutdown/StopTestNow/Heapdump message on port 4445
#0  Threads: 23/100 Samples: 1  Latency: 0  Resp.Time: 90 Errors: 1
#1  Threads: 96/100 Samples: 142  Latency: 0  Resp.Time: 205  Errors: 142
#2  Threads: 100/100  Samples: 210  Latency: 0  Resp.Time: 470  Errors: 210
#3  Threads: 100/100  Samples: 266  Latency: 0  Resp.Time: 361  Errors: 266
#4  Threads: 100/100  Samples: 295  Latency: 0  Resp.Time: 347  Errors: 295
#5  Threads: 100/100  Samples: 269  Latency: 0  Resp.Time: 375  Errors: 269
#6  Threads: 100/100  Samples: 306  Latency: 0  Resp.Time: 342  Errors: 306
#7  Threads: 100/100  Samples: 284  Latency: 0  Resp.Time: 349  Errors: 284
#8  Threads: 100/100  Samples: 305  Latency: 0  Resp.Time: 325  Errors: 305
#9  Threads: 100/100  Samples: 371  Latency: 0  Resp.Time: 262  Errors: 371
#10 Threads: 99/100 Samples: 361  Latency: 0  Resp.Time: 278  Errors: 361
Tidying up ...    @ Sun Feb 12 18:26:47 AEDT 2017 (1486884407192)
... end of run
```
