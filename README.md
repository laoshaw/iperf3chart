# iperf3 chart

<img src=http://s.natalian.org/2015-12-27/nuc.local_2015-12-27_wlp4s0.svg alt="LAN wifi">

**Requires** Bash >= 4, [Gnuplot](http://www.gnuplot.info/) >= 5, [iperf3](http://software.es.net/iperf/) & [jq](https://stedolan.github.io/jq/)

# Usage

	$ bash bw-test.sh iperf3.server.ip  # run iperf -s on iperf3.server.ip first
	$ for i in {1..100}; do ./bw-test.sh iperf3.server.ip; sleep 15; done
	$ bash aplot.sh # plot everything
	$ google-chrome final.svg


# Related projects

* <https://github.com/esnet/iperf/tree/master/contrib>
* <http://speed.dabase.com/>
